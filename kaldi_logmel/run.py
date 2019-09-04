#!/usr/bin/env python
# coding:utf-8
# Author: David Zhuang  --<i@cnbeining.com>
# Purpose: XMLRPC Server for running logmel feature with Kaldi within official Kaldi Docker image

# File must be compatible with Python 3.5

import os
import subprocess
from pathlib import Path
from xmlrpc.server import SimpleXMLRPCServer
from xmlrpc.server import SimpleXMLRPCRequestHandler


# Restrict to a particular path.
class RequestHandler(SimpleXMLRPCRequestHandler):
    rpc_paths = ('/RPC2',)


def run_logmel(wav_path):
    """str->int, str

    Given WAVE file path,
    Run Fbank log-mel with Kaldi,
    Return the path to Fbank scp filex
    """
    (tmp_path, wav_filename) = os.path.split(wav_path)
    _, file_extension = os.path.splitext(wav_filename)
    
    # Input filtering: if not correct type(rough check) or file DNE
    if file_extension is not '.wav' or not Path(wav_path):
        return ''
    
    # create input scp file
    # file looks like
    # 2003 /home/2003/wavs/2003.wav
    input_scp_path = wav_path + '.scp'
    
    with open(input_scp_path, 'w+') as f:
        f.write("{wav_filename} {wav_path}".format(wav_filename = wav_filename, wav_path = wav_path))
    
    # Run feature
    cmd = 'compute-fbank-feats --verbose=2 --num-mel-bins=64 ' + \
          'scp:{input_scp_path} ark,p:- | copy-feats --compress=true '.format(input_scp_path = input_scp_path) + \
          'ark,p:- ark,scp,p:{tmp_path}/wav.ark,{tmp_path}/wav_out.scp'.format(tmp_path = tmp_path)
    status_code, output = subprocess.getstatusoutput(cmd)
    
    # return empty if failed
    if status_code is not 0:
        return ''
    
    return '{tmp_path}/wav_out.scp'.format(tmp_path = tmp_path)


if __name__ == '__main__':
    # If running by CLI, create RPC server that will listen on
    server = SimpleXMLRPCServer(("0.0.0.0", 8000),
                                requestHandler = RequestHandler)
    
    # Enabling this will allow XML-RPC introspection functions - only use in trusted environment!
    server.register_introspection_functions()
    
    server.register_function(run_logmel)
    
    # allow Ctrl+C exit
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        exit()
