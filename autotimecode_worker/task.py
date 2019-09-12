#!/usr/bin/env python
# coding:utf-8

from __future__ import absolute_import

import time

from celery import Celery
import os
from pathlib import Path
from db.vad import get_vad_task_by_task_id, VADTaskStep
import xmlrpc.client

vad_server = xmlrpc.client.ServerProxy('http://kaldi-logmel:8000/RPC2')

app = Celery('proj', include = ['proj.tasks'], broker = os.environ['AMQP_URI'])

from .ffsend import *


def download_file_ffsend(ffsend_url, dest_pathname):
    service, fid, secret = parse_url(ffsend_url)
    metadata = get_metadata(service, fid, secret, password = None, url = ffsend_url)
    filesize = metadata[0]['metadata']['size']
    mime = metadata[0]['metadata']['type']
    original_filename = metadata[0]['metadata']['name']
    
    if filesize > 100 * 1024 * 1024:
        return -2
    
    if 'audio/' not in mime or 'video/' not in mime:
        return -3
    
    _, file_extension = os.path.splitext(original_filename)
    dest_filename = dest_pathname + '/file' + file_extension
    
    download(service, fid, secret, dest_filename, password = None, url = ffsend_url)
    
    if not Path(dest_filename):
        return -1
    
    return dest_filename


@app.task()
def run_vad(task_id):
    """"""
    vad_task = get_vad_task_by_task_id(task_id)
    if not vad_task:
        return ''
    
    tmp_pathname = str(vad_task.pk)
    
    Path('/tmp/' + tmp_pathname).mkdir(parents = True, exist_ok = True)
    
    if 'send.firefox.com' in vad_task.wav_url:
        result = download_file_ffsend(vad_task.wav_url, tmp_pathname)
        if result == -1:
            step_obj = VADTaskStep(comment='Failed to create file', timestamp=int(time.time()))
        elif result == -2:
            step_obj = VADTaskStep(comment = 'File too large', timestamp = int(time.time()))
        elif result == -3:
            step_obj = VADTaskStep(comment = 'File not audio or video', timestamp = int(time.time()))
        else:
            step_obj = VADTaskStep(comment = 'File uploaded', timestamp = int(time.time()))
        vad_task.steps.append(step_obj)
        
        vad_task.save()
        if result < 0:
            return False

    wav_tmp_path = vad_server.convert_to_wav(result)
    if not wav_tmp_path:
        step_obj = VADTaskStep(comment = 'Cannot convert to WAV 16000', timestamp = int(time.time()))
    else:
        step_obj = VADTaskStep(comment = 'Converted to WAV 16000', timestamp = int(time.time()))
        vad_task.wav_tmp_path = wav_tmp_path
    
    vad_task.steps.append(step_obj)
    vad_task.save()
    if not wav_tmp_path:
        return False

    scp_path = vad_server.run_logmel(wav_tmp_path)
    if not scp_path:
        step_obj = VADTaskStep(comment = 'Cannot convert to SCP', timestamp = int(time.time()))
    else:
        step_obj = VADTaskStep(comment = 'Converted to SCP', timestamp = int(time.time()))

    vad_task.steps.append(step_obj)
    vad_task.save()
    if not scp_path:
        return False

    srt_content = vad_server.run_vad(scp_path)
    if not srt_content:
        step_obj = VADTaskStep(comment = 'Cannot conduct VAD', timestamp = int(time.time()))
    else:
        step_obj = VADTaskStep(comment = 'Converted to SRT', timestamp = int(time.time()))
        vad_task.srt_content = srt_content

    vad_task.steps.append(step_obj)
    vad_task.save()
    if not scp_path:
        return False


if __name__ == '__main__':
    app.start()
