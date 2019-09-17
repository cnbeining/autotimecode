#!/usr/bin/env python
#coding:utf-8

from srt import *
import os
import subprocess
import requests
import json
from multiprocessing import Pool

try:
    from json.decoder import JSONDecodeError
except ImportError:
    JSONDecodeError = ValueError


class SpeechRecognizer(object):  # pylint: disable=too-few-public-methods
    """
    https://github.com/agermanidis/autosub/blob/master/autosub/__init__.py, MIT license

    Class for performing speech-to-text for an input FLAC file.

    Key came from Chromium.
    """
    
    def __init__(self, language = "en", rate = 16000, retries = 3, api_key = "AIzaSyBOti4mM-6x9WDnZIjIeyEU21OpBXqWBgw"):
        self.language = language
        self.rate = rate
        self.api_key = api_key
        self.retries = retries
    
    def __call__(self, data):
        try:
            for _ in range(self.retries):
                url = "http://www.google.com/speech-api/v2/recognize?client=chromium&lang={lang}&key={key}".format(
                    lang = self.language, key = self.api_key)
                headers = {"Content-Type": "audio/x-flac; rate=%d" % self.rate}
                
                try:
                    logging.warning(headers)
                    resp = requests.post(url, data = data, headers = headers)
                    logging.warning(resp.text)
                except requests.exceptions.ConnectionError:
                    continue
                
                for line in resp.content.decode('utf-8').split("\n"):
                    try:
                        line = json.loads(line)  # nothing fancy inside, but may return empty list
                        line = line['result'][0]['alternative'][0]['transcript']
                        return line[:1].upper() + line[1:]
                    except IndexError:
                        # no result
                        continue
                    except JSONDecodeError:
                        continue
        
        except KeyboardInterrupt:
            return None


def _ensure_dir(test_dir):
    """Create dir if not exist"""
    if not os.path.isdir(test_dir):
        os.mkdir(test_dir)


def _convert_to_wav(path_input_file, path_output):
    """str, str->int

    Convert single input file to WAV.

    Reason: WAV can be cut at any subsecond, and works everywhere.
    """
    command = ["/app/ffmpeg", "-y", "-loglevel", "error", "-i", path_input_file,
               "-ac", '1', "-ar", '16000', path_output]
    result = subprocess.run(command)
    
    return result.returncode


def _convert_to_flac_segment(path_input_file, path_output, from_sec, to_sec):
    """str, str, float, float->int

    Convert WAV file to a FLAV segment by time.
    The FLAC segment will be further sent for ASR.

    path_input_file: WAV file
    path_output: FLAC file
    """
    # don't need very detailed log - this rarely fails, and 300+ ffmpeg runs ruins the log
    command = ["/app/ffmpeg", "-y", "-loglevel", "error", "-ss", str(from_sec), "-t", str(to_sec - from_sec), "-i",
               path_input_file, path_output]
    result = subprocess.run(command)
    
    return result.returncode


def _create_recognizer_instance(lang_code = 'en'):
    """Need this file to create instance - otherwise map() does not work"""
    recognizer = SpeechRecognizer(language = lang_code)
    return recognizer


def parse_srt_to_subtitle(path_to_srt):
    """str->list of Subtitle

    Load .srt file.
    """
    with open(path_to_srt, 'r') as file:
        data = file.read()
    
    #  srt.parse returns a generator - explode it
    return list(parse(data))


def generate_audio_segments(path_input_file, subtitle, elastic = 0.5):
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
    
    input_file_basename = os.path.basename(path_input_file)
    temp_path = os.path.dirname(path_input_file) + '/tmp/'
    _ensure_dir(temp_path)
    
    # convert file to WAV
    wav_name = input_file_basename + '.wav'
    path_output_wav = temp_path + wav_name
    
    returncode = _convert_to_wav(path_input_file, path_output_wav)
    
    if returncode is not 0:
        raise Exception('Oops: WAV convertation failed.... '
                        'You should have checked the log')
    
    # Then convert WAV into FLAC segments
    # No multiprocessing due to weird bug before with ffmpeg
    result = []
    for i, sub in enumerate(subtitle):
        path_output_flac_segment = '{path_output_wav}_{i}.flac'.format(path_output_wav = path_output_wav, i = i)
        returncode = _convert_to_flac_segment(path_output_wav, path_output_flac_segment,
                                              max(0, sub.start.total_seconds() - elastic),
                                              sub.end.total_seconds() + elastic)
        if returncode is 0:
            result.append(path_output_flac_segment)
        else:
            result.append('')
    
    return result


def recognize_segments(flac_path_list, lang_code = 'en'):
    """int->list of string

    Treat this function as interface.

    flac_path_list: list of string containing path to FLAC.
    concurrent: concurrent calls to API, if applicable.
    lang_code: language code, as defined in https://github.com/agermanidis/autosub/blob/master/autosub/constants.py
    Return: list of string with recognized materials.

    This function eats LOTS of RAM for speed!
    """
    recognizer = _create_recognizer_instance(lang_code = lang_code)
    result_recognize = []
    for i, flac_file in enumerate(flac_path_list):
        logging.warning(i)
        with open(flac_file, 'rb') as f:
            result_recognize.append(recognizer(f.read()))
    
    return result_recognize


def merge_result(subtitle, result_recognize):
    """list of Subtitle, list of str->list of Subtitle

    Merge the recognized list to SRT.
    """
    # Google may return None for not recognizable
    result_recognize_clean = [i if i else '' for i in result_recognize]
    
    for sub, text in zip(subtitle, result_recognize_clean):
        sub.content = text
    
    return subtitle
