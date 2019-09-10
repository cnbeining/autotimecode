#!/usr/bin/env python
# coding:utf-8
# Author: David Zhuang  --<i@cnbeining.com>
# Purpose: XMLRPC Server for running Gentle FA

# File must be compatible with Python 3.6!!!
import datetime
import json
import multiprocessing
import os
import subprocess
from pathlib import Path
from xmlrpc.server import SimpleXMLRPCServer
from xmlrpc.server import SimpleXMLRPCRequestHandler
from socketserver import ThreadingMixIn
import gentle
import logging
from srt import *


class ThreadXMLRPCServer(ThreadingMixIn, SimpleXMLRPCServer): pass


# Restrict to a particular path.
class RequestHandler(SimpleXMLRPCRequestHandler):
    rpc_paths = ('/RPC2',)


def _upsample_wav(path_input_file):
    """str->str

    Upstream the audio file to 8K,
    downsample to 1 channel as per
    Gentle's request
    """
    # input validation: if input exists
    if not Path(path_input_file):
        return ''
    
    path_output = path_input_file + '_8000.wav'
    
    command = ["ffmpeg", "-y", "-i", path_input_file, '-c:a', 'pcm_s16le',
               "-ac", '1', "-ar", '8000', path_output]
    result = subprocess.run(command)
    
    if result.returncode is not 0:
        return ''
    
    return path_output


def _convert_to_wav_segment(path_input_file, path_output, from_sec, to_sec):
    """str, str, float, float->int

    Convert WAV file to a FLAV segment by time.
    The FLAC segment will be further sent for ASR.

    path_input_file: WAV file
    path_output: WAV file
    """
    # don't need very detailed log - this rarely fails,
    # and 300+ ffmpeg runs ruins the log
    command = ["ffmpeg", "-y", "-loglevel", "error", "-ss", str(from_sec),
               "-t", str(to_sec - from_sec), "-i", path_input_file, path_output]
    # print(command)
    result = subprocess.run(command)
    
    return result.returncode


def generate_audio_segments(path_input_file, subtitle, elastic = 0):
    """str, list of Subtitle, Bool, float->list of str

    Return list of absolute paths, each path is a FLAC containing 1 segment
    aligned to the related segment from the subtitle file.

    Output should be FLAC since Google API loves it.

    path_input_file: Any file that can be converted to WAV by ffmpeg
    subtitle: list of Subtitle.
    elastic: minus {elastic} seconds on from_sec,
             plus elastic seconds on to_sec
             to ensure segment include full sentense
    """
    # convert file to WAV
    path_output_wav = _upsample_wav(path_input_file)
    
    # Then convert WAV into WAV segments
    # No multiprocessing due to weird bug before with ffmpeg
    result = []
    for i, sub in enumerate(subtitle):
        path_output_wav_segment = '{path_output_wav}_{i}.wav'.format(path_output_wav = path_output_wav, i = i)
        returncode = _convert_to_wav_segment(path_output_wav,
                                             path_output_wav_segment,
                                             max(0, sub.start.total_seconds() - elastic),
                                             sub.end.total_seconds() + elastic)
        if returncode is 0:
            result.append(path_output_wav_segment)
        else:
            result.append('')
    
    return result


def _on_progress(p):
    for k, v in p.items():
        logging.debug("%s: %s" % (k, v))


def _cleanup_subtitle(subtitle, elastic = 0):
    """list of Subtitle -> list of Subtitle

    Remove everything starting with #, remove all blank lines
    """
    for s in subtitle:
        s.content = '\n'.join([i for i in s.content.split('\n') if i and not i.startswith('#')])
        s.start -= datetime.timedelta(seconds = elastic)
        s.end += datetime.timedelta(seconds = elastic)
    
    return subtitle


def call_gentle_chunk(wav_path, transcript, disfluency = False, conservative = False):
    """"""
    resources = gentle.Resources()
    
    aligner = gentle.ForcedAligner(resources, transcript, nthreads = multiprocessing.cpu_count(),
                                   disfluency = disfluency,
                                   conservative = conservative, disfluencies = ('uh', 'um'))
    
    result = aligner.transcribe(wav_path, progress_cb = _on_progress, logging = logging)
    
    return json.loads(result.to_json())


def run_gentle_chunk(audio_path, transcript):
    """srt, Subtitle-> list of Subtitle
    """
    
    original_lines = transcript.content.split('\n')
    clean_word = [[''.join(e for e in j if e.isalnum()) for j in i.strip().split(' ')] for i in original_lines]
    clean_word_line = [' '.join(i) for i in clean_word]
    
    resp = call_gentle_chunk(audio_path, '\n'.join(clean_word_line))
    
    section_start = transcript.start
    result = []
    
    len_consumed = -len(clean_word_line[0])
    for i, clean_word_line in enumerate(clean_word):
        len_consumed += len(clean_word_line)
        start_sec_lst = [i['start'] for i in resp['words'][len_consumed:] if i['case'] == 'success']
        if not len(
                start_sec_lst):  # nothing from this point can be recognized. This is not recoverable and must be
            # manually corrected
            result.append(
                    Subtitle(index = 1, start = transcript.end, end = transcript.end + datetime.timedelta(seconds = 1),
                             content = original_lines[i], proprietary = ''))
            continue
        
        start_time = section_start + datetime.timedelta(
                seconds = start_sec_lst[0])  # start time is the start time of the 1st aligned word
        
        end_sec_lst = [i['end'] for i in resp['words'][len_consumed:len(clean_word_line)] if i['case'] == 'success']
        if not len(end_sec_lst):  # should not happen as a start time should exist... but write this login anyways
            result.append(Subtitle(index = 1, start = start_time, end = start_time + datetime.timedelta(seconds = 1),
                                   content = original_lines[i], proprietary = ''))
            continue
        
        end_time = section_start + datetime.timedelta(
                seconds = end_sec_lst[-1])  # end time is the end time of the last aligned word
        
        result.append(
                Subtitle(index = 1, start = start_time, end = end_time, content = original_lines[i], proprietary = ''))
    
    return result


def _batch_fa(subtitle, wav_path_list):
    """"""
    result = []
    for i, j in zip(wav_path_list, subtitle):
        result += run_gentle_chunk(i, j)
    return result


def run_gentle(wav_path, srt_content, elastic = 0.5):
    """str, str-> str of Subtitle
    """
    subtitle = list(parse(srt_content))
    
    subtitle = _cleanup_subtitle(subtitle, elastic = 0)
    
    wav_path_list = generate_audio_segments(wav_path, subtitle, elastic = 0)

    new_subtitle = _batch_fa(subtitle, wav_path_list)
    
    return compose(new_subtitle)


def ping():
    return 'pong!'


if __name__ == '__main__':
    # If running by CLI, create RPC server that will listen on
    server = ThreadXMLRPCServer(("0.0.0.0", 8000),
                                requestHandler = RequestHandler)
    
    # Enabling this will allow XML-RPC introspection functions - only use in trusted environment!
    server.register_introspection_functions()
    
    server.register_function(ping)
    server.register_function(run_gentle)
    server.register_function(generate_audio_segments)

    # allow Ctrl+C exit
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        exit()
