#!/usr/bin/env python
# coding:utf-8
# Author: David Zhuang  --<i@cnbeining.com>
# Purpose: XMLRPC Server for running logmel feature with Kaldi within official Kaldi Docker image

# File must be compatible with Python 3.5
import datetime
import os
import subprocess
from pathlib import Path
from socketserver import ThreadingMixIn
from xmlrpc.server import SimpleXMLRPCServer
from xmlrpc.server import SimpleXMLRPCRequestHandler
import numpy as np
from kaldi_io import read_mat_scp
import requests
import srt


class ThreadXMLRPCServer(ThreadingMixIn, SimpleXMLRPCServer): pass


# Restrict to a particular path.
class RequestHandler(SimpleXMLRPCRequestHandler):
    rpc_paths = ('/RPC2',)


def ping():
    return 'pong!'


def frame2seg(frames, frame_time_sec = 0.01, pos_label = 1):
    pos_idxs = np.where(frames == pos_label)[0]
    pos_regions = np.split(pos_idxs, np.where(np.diff(pos_idxs) != 1)[0] + 1)
    if len(pos_idxs) == 0 or len(pos_regions) == 0:
        return []
    segments = np.array([[x[0], x[-1] + 1] for x in pos_regions]) * frame_time_sec
    return segments


def normalize(data):
    return np.divide(np.subtract(data, np.mean(data)), np.std(data))


def convert_to_wav(path_input_file):
    """str, str->int

    Convert single input file to WAV.

    Reason: WAV can be cut at any subsecond, and works everywhere.
    """
    path_output = path_input_file + '_16000.wav'
    command = ["/app/ffmpeg", "-y", "-i", path_input_file,
               "-ac", '1', "-ar", '16000', path_output]
    result = subprocess.run(command)
    
    if result.returncode is not 0:
        return ''
    
    return path_output


def run_logmel(wav_path):
    """str->int, str

    Given WAVE file path,
    Run Fbank log-mel with Kaldi,
    Return the path to Fbank scp filex
    """
    (tmp_path, wav_filename) = os.path.split(wav_path)
    _, file_extension = os.path.splitext(wav_filename)
    
    # Input filtering: if not correct type(rough check) or file DNE
    if file_extension != '.wav' or not Path(wav_path):
        return ''
    
    # create input scp file
    # file looks like
    # 2003 /home/2003/wavs/2003.wav
    input_scp_path = wav_path + '.scp'
    
    with open(input_scp_path, 'w+') as f:
        f.write("{wav_filename} {wav_path}".format(wav_filename = wav_filename, wav_path = wav_path))
    
    # Run feature
    cmd = '/opt/kaldi/src/featbin/compute-fbank-feats --verbose=2 --num-mel-bins=64 ' + \
          'scp:{input_scp_path} ark,p:- | /opt/kaldi/src/featbin/copy-feats --compress=true '.format(
                  input_scp_path = input_scp_path) + \
          'ark,p:- ark,scp,p:{tmp_path}/wav.ark,{tmp_path}/wav_out.scp'.format(tmp_path = tmp_path)
    status_code, output = subprocess.getstatusoutput(cmd)
    
    # return empty if failed
    if status_code is not 0:
        return ''
    
    return '{tmp_path}/wav_out.scp'.format(tmp_path = tmp_path)


def model_predict(input_matrix):
    return requests.post('http://tensorflow-serving-vad:8501/v1/models/cnn_td_original/versions/000001:predict',
                         json = {'inputs': input_matrix}).json()['outputs']


def run_vad(scp_file, overlap = 0.0):
    """str, float -> str(srt file)

    Run VAD on SCP file,
    return empty SRT.
    """
    gen = read_mat_scp(scp_file)
    num_frames, num_freq = (64, 64)
    
    # Generate SAD posteriors using pre-trained SAD model
    _, fts = list(gen)[0]
    
    shift = num_frames - int(overlap * num_frames)
    num_seg = int((len(fts) - num_frames) // shift)
    pred = [[] for i in range(fts.shape[0])]
    
    for i in range(num_seg):
        feats_seg = normalize(fts[i * shift:i * shift + num_frames])
        p = model_predict(feats_seg.reshape((1, num_frames, num_freq, 1)).tolist())
        for j in range(i * shift, i * shift + 64):
            pred[j].extend([p[0][1]])
    predictions = np.array([np.median(pred[i]) if pred[i] != [] else 0 for i in range(fts.shape[0])])
    
    # Post-processing of posteriors
    labels = np.round(predictions)
    seg_times = frame2seg(labels)
    
    subs = []
    # Write start and end SAD timestamps
    for i, segment in enumerate(seg_times):
        if segment[1] - segment[0] > 0.05:
            subs.append(srt.Subtitle(index = i, start = datetime.timedelta(seconds = float(segment[0])),
                                     end = datetime.timedelta(seconds = float(segment[1])), content = ''))
    
    return '\n'.join([i.to_srt() for i in subs])


if __name__ == '__main__':
    # If running by CLI, create RPC server that will listen on
    server = ThreadXMLRPCServer(("0.0.0.0", 8000),
                                requestHandler = RequestHandler)
    
    # Enabling this will allow XML-RPC introspection functions - only use in trusted environment!
    server.register_introspection_functions()
    
    server.register_function(ping)
    server.register_function(convert_to_wav)
    server.register_function(run_logmel)
    server.register_function(run_vad)

    # allow Ctrl+C exit
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        exit()
