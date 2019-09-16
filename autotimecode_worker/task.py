#!/usr/bin/env python
# coding:utf-8
import json
import os
import shutil

from celery import Celery
from pathlib import Path
from srt import *

from db.fa import get_fa_task_by_task_id
from db import TaskStep
from helper import download_file_from_ffsend, get_step_obj_from_ffsend_code
from db.vad import get_vad_task_by_task_id
import xmlrpc.client
from mongoengine import *

vad_server = xmlrpc.client.ServerProxy('http://kaldi-logmel:8000/RPC2')
fa_server = xmlrpc.client.ServerProxy('http://gentle-xmlrpc:8000/RPC2')
punct_segment_server = xmlrpc.client.ServerProxy('http://gentle-xmlrpc:8000/RPC2')

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


@app.task(name = 'punct_segment.ping')
def ping():
    return punct_segment_server.ping()


@app.task(name = 'worker.find_vad')
def find_vad(task_id):
    return get_vad_task_by_task_id(task_id).to_dict()


@app.task(name = 'vad.run_vad')
def run_vad(task_id):
    """"""
    ## Fetch task
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
        step_obj = get_step_obj_from_ffsend_code(code)
        
        vad_task.steps.append(step_obj)
        vad_task.save()
        
        if code < 0:
            shutil.rmtree(tmp_dir, ignore_errors = True)
            return False
    
    else:
        step_obj = TaskStep(comment = 'Uploader not implemented')
        vad_task.steps.append(step_obj)
        vad_task.save()
        return False
    
    ## PREPROCESS
    wav_tmp_path = vad_server.convert_to_wav(media_file_path)
    if not wav_tmp_path:
        step_obj = TaskStep(comment = 'Cannot convert to WAV 16000')
    else:
        step_obj = TaskStep(comment = 'Converted to WAV 16000')
        vad_task.wav_tmp_path = wav_tmp_path
    
    vad_task.steps.append(step_obj)
    vad_task.save()
    if not wav_tmp_path:
        shutil.rmtree(tmp_dir, ignore_errors = True)
        return False
    
    ## LOG-MEL
    scp_path = vad_server.run_logmel(wav_tmp_path)
    if not scp_path:
        step_obj = TaskStep(comment = 'Cannot convert to SCP')
    else:
        step_obj = TaskStep(comment = 'Converted to SCP')
    
    vad_task.steps.append(step_obj)
    vad_task.save()
    if not scp_path:
        shutil.rmtree(tmp_dir, ignore_errors = True)
        return False
    
    ## CALL Tensorflow Serving
    srt_content = vad_server.run_vad(scp_path)
    if not srt_content:
        step_obj = TaskStep(comment = 'Cannot conduct VAD')
    else:
        step_obj = TaskStep(comment = 'Converted to SRT')
        vad_task.srt_content = srt_content
    
    vad_task.steps.append(step_obj)
    vad_task.save()
    if not scp_path:
        shutil.rmtree(tmp_dir, ignore_errors = True)
        return False
    
    shutil.rmtree(tmp_dir, ignore_errors = True)
    return True


@app.task(name = 'fa.run_fa')
def run_fa(task_id):
    """"""
    ## Fetch task
    fa_task = get_fa_task_by_task_id(task_id)
    if not fa_task:
        return ''
    
    tmp_pathname = str(fa_task.pk)
    tmp_dir = '/tmp/' + tmp_pathname
    
    # make sure new working dir exists
    Path(tmp_dir).mkdir(parents = True, exist_ok = True)
    
    # shall be the working dir
    os.chdir(tmp_dir)
    
    ## File uploading
    if 'send.firefox.com' in fa_task.wav_url:
        code, media_file_path = download_file_from_ffsend(fa_task.wav_url, tmp_dir)
        step_obj = get_step_obj_from_ffsend_code(code)
        
        fa_task.steps.append(step_obj)
        fa_task.save()
        
        if code < 0:
            shutil.rmtree(tmp_dir, ignore_errors = True)
            return False
    
    else:
        step_obj = TaskStep(comment = 'Uploader not implemented')
        fa_task.steps.append(step_obj)
        fa_task.save()
        return False
    
    ## Parse SRT
    if not fa_task.request_srt_content:
        step_obj = TaskStep(comment = 'Request SRT is empty')
        shutil.rmtree(tmp_dir, ignore_errors = True)
        fa_task.steps.append(step_obj)
        fa_task.save()
        return False
    
    try:
        request_srt_content = json.loads('{"srt":"' + fa_task.request_srt_content + '"}')['srt']
    except:
        step_obj = TaskStep(comment = 'SRT cannot be parsed')
        shutil.rmtree(tmp_dir, ignore_errors = True)
        fa_task.steps.append(step_obj)
        fa_task.save()
        return False
    
    ## Conduct FA
    segment = False
    if fa_task.segment:
        segment = True
    
    result = fa_server.run_gentle(media_file_path, request_srt_content, segment)
    if len(result) < 1:
        step_obj = TaskStep(comment = 'Cannot conduct FA')
    else:
        step_obj = TaskStep(comment = 'FA conducted')
        fa_task.result_srt_content = result
    fa_task.steps.append(step_obj)
    fa_task.save()
    shutil.rmtree(tmp_dir, ignore_errors = True)
    
    if len(result) < 1:
        return False
    
    return True


if __name__ == '__main__':
    app.start()
