#!/usr/bin/env python
#coding:utf-8
import datetime
import glob
import os
import subprocess

from db import TaskStep
from ffsend import parse_url, get_metadata


def is_valid_file_ffsend(ffsend_url):
    """str->int
    
    Figure out whether ffsend file should be downloaded
    
    :returns
    -2: too large
    -3: not valid MIME
    1: Is valid file
    """
    service, fid, secret = parse_url(ffsend_url)
    metadata = get_metadata(service, fid, secret, password = None, url = ffsend_url)
    filesize = metadata[0]['metadata']['size']
    mime = metadata[0]['metadata']['type']
    
    if filesize > 100 * 1024 * 1024:
        return -2
    
    if 'audio/' not in mime and 'video/' not in mime:
        return -3
    
    return 1


def download_file_ffsend(ffsend_url, target_path = None, target_name = None):
    """str, str, str->str

    URL->downloaded file path.

    Download using ffsend binary since the Python ver
    does not really works.

    :return empty if failed, path if success
    """
    if target_path:
        os.chdir(target_path)
    
    # will download to target path or current path
    command = ["/app/ffsend-v0.2.51-linux-x64-static", 'download', ffsend_url]
    result = subprocess.run(command)
    
    if result.returncode is not 0:
        return ''
    
    downloaded_file_paths = glob.glob(os.path.join(target_path, '*.*'))
    
    if not downloaded_file_paths:
        return ''
    
    if target_name:
        if not target_path:
            target_path = ''
        
        _, file_extension = os.path.splitext(downloaded_file_paths[0])
        new_name = os.path.join(target_path, target_name + file_extension)
        os.rename(downloaded_file_paths[0], new_name)
        
        return new_name
    
    return downloaded_file_paths[0]


def download_file_from_ffsend(ffsend_url, target_path):
    # is file valid or not?
    result = is_valid_file_ffsend(ffsend_url)
    if not result:
        if result == -2:  # file too large
            return -2, ''
        elif result == -3:  # File not audio or video
            return -3, ''
        else:  # File not valid
            return -4, ''

    # is file downloaded or not?
    media_file_path = download_file_ffsend(ffsend_url, target_path = target_path, target_name = 'file')
    if not media_file_path:  # Failed to create file
        return -5, ''
    else:  # FFsend file uploaded
        return 1, media_file_path


def get_step_obj_from_ffsend_code(code):
    """"""
    if code < 0:
        if code == -2:
            step_obj = TaskStep(comment = 'File too large')
        elif code == -3:
            step_obj = TaskStep(comment = 'File not audio or video')
        elif code == -4:
            step_obj = TaskStep(comment = 'File not valid')
        elif code == -5:
            step_obj = TaskStep(comment = 'Failed to create file')
    else:
        step_obj = TaskStep(comment = 'FFsend file uploaded')
    
    return step_obj
