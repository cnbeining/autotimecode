#!/usr/bin/env python
# coding:utf-8
import os
import shutil

import time

from celery import Celery
from pathlib import Path

from helper import download_file_from_ffsend
from db.vad import get_vad_task_by_task_id, VADTaskStep
import xmlrpc.client
from mongoengine import *

vad_server = xmlrpc.client.ServerProxy('http://kaldi-logmel:8000/RPC2')
fa_server = xmlrpc.client.ServerProxy('http://gentle-xmlrpc:8000/RPC2')

connect(host = os.environ['MONGO_URL'])

app = Celery('task', broker = os.environ['CELERY_BROKER_URL'])


@app.task(name = 'worker.ping')
def ping():
    return 'pong!'


@app.task(name = 'vad.ping')
def ping():
    return vad_server.ping()


@app.task(name = 'fa.ping')
def ping():
    return fa_server.ping()


@app.task(name = 'worker.find_vad')
def find_vad(task_id):
    return get_vad_task_by_task_id(task_id).to_dict()


@app.task(name = 'vad.run_vad')
def run_vad(task_id):
    """"""
    vad_task = get_vad_task_by_task_id(task_id)
    if not vad_task:
        return ''
    
    tmp_pathname = str(vad_task.pk)
    tmp_dir = '/tmp/' + tmp_pathname
    
    # make sure new working dir exists
    Path(tmp_dir).mkdir(parents = True, exist_ok = True)
    
    # shall be the working dir
    os.chdir(tmp_dir)
    
    ## File uploading
    if 'send.firefox.com' in vad_task.wav_url:
        code, media_file_path = download_file_from_ffsend(vad_task.wav_url, tmp_dir)
        if code < 0:
            if code == -2:
                step_obj = VADTaskStep(comment = 'File too large', timestamp = int(time.time()))
            elif code == -3:
                step_obj = VADTaskStep(comment = 'File not audio or video', timestamp = int(time.time()))
            elif code == -4:
                step_obj = VADTaskStep(comment = 'File not valid', timestamp = int(time.time()))
            elif code == -5:
                step_obj = VADTaskStep(comment = 'Failed to create file', timestamp = int(time.time()))
            shutil.rmtree(tmp_dir, ignore_errors = True)
        else:
            step_obj = VADTaskStep(comment = 'FFsend file uploaded', timestamp = int(time.time()))

        vad_task.steps.append(step_obj)
        vad_task.save()
        
        if code < 0:
            return False
    
    else:
        step_obj = VADTaskStep(comment = 'Uploader not implemented', timestamp = int(time.time()))
        vad_task.steps.append(step_obj)
        vad_task.save()
    
    
    ## PREPROCESS
    wav_tmp_path = vad_server.convert_to_wav(media_file_path)
    if not wav_tmp_path:
        step_obj = VADTaskStep(comment = 'Cannot convert to WAV 16000', timestamp = int(time.time()))
    else:
        step_obj = VADTaskStep(comment = 'Converted to WAV 16000', timestamp = int(time.time()))
        vad_task.wav_tmp_path = wav_tmp_path
    
    vad_task.steps.append(step_obj)
    vad_task.save()
    if not wav_tmp_path:
        return False
    
    ## LOG-MEL
    scp_path = vad_server.run_logmel(wav_tmp_path)
    if not scp_path:
        step_obj = VADTaskStep(comment = 'Cannot convert to SCP', timestamp = int(time.time()))
    else:
        step_obj = VADTaskStep(comment = 'Converted to SCP', timestamp = int(time.time()))
    
    vad_task.steps.append(step_obj)
    vad_task.save()
    if not scp_path:
        return False
    
    
    ## CALL Tensorflow Serving
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

    shutil.rmtree(tmp_dir, ignore_errors = True)
    return True


@app.task(name = 'fa.run_fa')
def run_fa(task_id):
    """"""
    return False


if __name__ == '__main__':
    app.start()
