#!/usr/bin/env python

""" Interact with https://send.firefox.com """

import os
from hashlib import sha256
import base64
import json
import re
import hmac


# AES.MODE_GCM requires PyCryptodome
try:
    from Cryptodome.Cipher import AES
    from Cryptodome.Protocol.KDF import PBKDF2
except ImportError:
    from Crypto.Cipher import AES
    from Crypto.Protocol.KDF import PBKDF2
import requests


def b64encode(s):
    return base64.urlsafe_b64encode(s).decode().rstrip('=')


def b64decode(s):
    # accept unicode (py2), str (py2) and str (py3) inputs
    s = str(s)
    s += '==='[(len(s) + 3) % 4:]
    return base64.urlsafe_b64decode(s)


def hkdf(length, ikm, hashfunc = sha256, salt = b"", info = b""):
    prk = hmac.new(salt, ikm, hashfunc).digest()
    t = b""
    i = 0
    okm = bytearray()
    while len(okm) < length:
        i += 1
        t = hmac.new(prk, t + info + bytes(bytearray([i])), hashfunc).digest()
        okm += t
    return bytes(okm[:length])


def deriveFileKey(secret):
    return hkdf(16, secret, info = b'encryption')


def deriveAuthKey(secret, password = None, url = None):
    if password is None:
        return hkdf(64, secret, info = b'authentication')
    return PBKDF2(password.encode('utf8'), url.encode('utf8'), 64, 100,
                  lambda x, y: hmac.new(x, y, sha256).digest())


def deriveMetaKey(secret):
    return hkdf(16, secret, info = b'metadata')


def parse_url(url):
    secret = None
    m = re.match(r'^https://(.*)/download/(\w+)/?#?([\w_-]+)?$', url)
    if m:
        service = 'https://' + m.group(1) + '/'
        fid = m.group(2)
        if m.group(3):
            secret = b64decode(m.group(3))
    else:
        fid = url
    
    return service, fid, secret


def parse_nonce(headers):
    return base64.b64decode(headers['WWW-Authenticate'].split()[1])


def set_params(service, fid, token, **params):
    params['owner_token'] = token
    req = requests.post(service + 'api/params/' + fid, json = params)
    req.raise_for_status()


def get_metadata(service, fid, secret, password = None, url = None):
    authKey = deriveAuthKey(secret, password, url)
    metaKey = deriveMetaKey(secret)
    metaCipher = AES.new(metaKey, AES.MODE_GCM, b'\x00' * 12, mac_len = 16)
    
    url = service + "download/" + fid
    resp = requests.get(url)
    resp.raise_for_status()
    nonce = parse_nonce(resp.headers)
    
    sig = hmac.new(authKey, nonce, sha256).digest()
    url = service + "api/metadata/" + fid
    resp = requests.get(url, headers = {'Authorization': 'send-v1 ' + b64encode(sig)})
    resp.raise_for_status()
    metadata = resp.json()
    
    md = b64decode(metadata['metadata'])
    md, mdtag = md[:-16], md[-16:]
    md = metaCipher.decrypt(md)
    metaCipher.verify(mdtag)
    metadata['metadata'] = json.loads(md)
    
    # return metadata and next nonce
    return metadata, parse_nonce(resp.headers)


def get_owner_info(service, fid, token):
    req = requests.post(service + 'api/info/' + fid, json = {'owner_token': token})
    req.raise_for_status()
    return req.json()


def download(service, fid, secret, dest, password = None, url = None):
    metadata, nonce = get_metadata(service, fid, secret, password, url)
    
    encryptKey = deriveFileKey(secret)
    authKey = deriveAuthKey(secret, password, url)
    
    sig = hmac.new(authKey, nonce, sha256).digest()
    url = service + "api/download/" + fid
    resp = requests.get(url, headers = {'Authorization': 'send-v1 ' + b64encode(sig)}, stream = True)
    resp.raise_for_status()
    
    flen = int(resp.headers.get('Content-Length'))
    filename = metadata['metadata']['name']
    
    if os.path.isdir(dest):
        filename = os.path.join(dest, filename)
    else:
        filename = dest
    
    iv = b64decode(metadata['metadata']['iv'])
    cipher = AES.new(encryptKey, AES.MODE_GCM, iv, mac_len = 16)
    
    ho = sha256()
    
    try:
        with open(filename + '.tmp', 'wb') as outf:
            
            dl = 0
            tag = b''
            taglen = 16
            for data in resp.iter_content(chunk_size = 8192):
                dl += len(data)
                
                if dl > flen - taglen:
                    dend = max(len(data) - (dl - (flen - taglen)), 0)
                    tag += data[dend:]
                    data = data[:dend]
                
                chunk = cipher.decrypt(data)
                ho.update(chunk)
                outf.write(chunk)
                if len(tag) == taglen:
                    break
            
            cipher.verify(tag)
    except Exception as e:
        os.unlink(filename + '.tmp')
        return False
    else:
        os.rename(filename + '.tmp', filename)
        return True
