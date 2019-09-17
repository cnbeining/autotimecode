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
from db.stt import get_stt_task_by_task_id
from helper import download_file_from_ffsend, get_step_obj_from_ffsend_code
from db.vad import get_vad_task_by_task_id
import xmlrpc.client
from mongoengine import *

from stt.chromium import generate_audio_segments, recognize_segments, merge_result

vad_server = xmlrpc.client.ServerProxy('http://kaldi-logmel:8000/RPC2')
fa_server = xmlrpc.client.ServerProxy('http://gentle-xmlrpc:8000/RPC2')
punct_segment_server = xmlrpc.client.ServerProxy('http://gentle-xmlrpc:8000/RPC2')

connect(host = os.environ['MONGO_URL'])

app = Celery('task', broker = os.environ['CELERY_BROKER_URL'])

# TODO: refactor this file


def segment_subtitle(subtitle):
    """list of Subtitle->list of Subtitle"""
    for sub in subtitle:
        sub.content = '\n'.join(punct_segment_server.segment_sentence(' '.join(sub.content.split('\n'))))
    return subtitle

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


def ensure_tmp_dir(dir_name):
    """"""
    tmp_dir = '/tmp/' + dir_name

    # make sure new working dir exists
    Path(tmp_dir).mkdir(parents = True, exist_ok = True)
    
    return tmp_dir

@app.task(name = 'vad.run_vad')
def run_vad(task_id):
    """"""
    ## Fetch task
    vad_task = get_vad_task_by_task_id(task_id)
    if not vad_task:
        return ''
    
    tmp_pathname = str(vad_task.pk)
    tmp_dir = ensure_tmp_dir(tmp_pathname)
    
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
    tmp_dir = ensure_tmp_dir(tmp_pathname)

    # shall be the working dir
    os.chdir(tmp_dir)
    
    ## File uploading
    if 'send.firefox.com' in fa_task.wav_url:
        code, media_file_path = download_file_from_ffsend(fa_task.wav_url, tmp_dir)
        step_obj = get_step_obj_from_ffsend_code(code)
        
        fa_task.add_step(step_obj)
        
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


@app.task(name = 'stt.chromium.run_stt')
def run_chromium_stt(task_id):
    """"""
    ## Fetch task
    stt_task = get_stt_task_by_task_id(task_id)
    if not stt_task:
        return ''

    tmp_pathname = str(stt_task.pk)
    tmp_dir = ensure_tmp_dir(tmp_pathname)

    # shall be the working dir
    os.chdir(tmp_dir)

    ## File uploading
    if 'send.firefox.com' in stt_task.wav_url:
        code, media_file_path = download_file_from_ffsend(stt_task.wav_url, tmp_dir)
        step_obj = get_step_obj_from_ffsend_code(code)

        stt_task.add_step(step_obj)
    
        if code < 0:
            shutil.rmtree(tmp_dir, ignore_errors = True)
            return False

    else:
        stt_task.add_step(TaskStep(comment = 'Uploader not implemented'))
        return False

    ## Parse SRT
    if not stt_task.request_srt_content:
        stt_task.add_step(TaskStep(comment = 'Request SRT is empty'))
        shutil.rmtree(tmp_dir, ignore_errors = True)
        return False

    try:
        request_srt_content = json.loads('{"srt":"' + stt_task.request_srt_content + '"}')['srt']
    except:
        stt_task.add_step(TaskStep(comment = 'SRT cannot be parsed'))
        shutil.rmtree(tmp_dir, ignore_errors = True)
        return False
    
    ## Conduct STT
    # convert SRT to list of Subtitle
    subtitle = list(parse(request_srt_content))
    
    # segment audio into smaller chunks
    flac_path_list = generate_audio_segments(media_file_path, subtitle, elastic = 0.5)
    stt_task.add_step(TaskStep(comment = 'File segmented'))
    
    lang = 'en'
    if stt_task.lang:
        lang = stt_task.lang
    
    # Call API
    logging.warning(flac_path_list)
    result_recognize = recognize_segments(flac_path_list, lang_code = lang)
    logging.warning(result_recognize)
    new_subtitle = merge_result(subtitle, result_recognize)
    stt_task.add_step(TaskStep(comment = 'STT conducted'))
    
    # Clean up and put back punctuations
    if lang == 'en' and stt_task.correct:
        new_subtitle = segment_subtitle(new_subtitle)
        stt_task.add_step(TaskStep(comment = 'DeepCorrect conducted'))
    
    stt_task.result_srt_content = compose(new_subtitle)
    
    stt_task.save()
    shutil.rmtree(tmp_dir, ignore_errors = True)
    
    return True


if __name__ == '__main__':
    app.start()
