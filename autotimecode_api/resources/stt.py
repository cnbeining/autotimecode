#!/usr/bin/env python
# coding:utf-8
from flask import Flask, jsonify, request
from flask_restful import reqparse, abort, Api, Resource, inputs

from celery_app import celery
from db.stt import STTTask, get_stt_task_by_task_id
from resources.response import make_response, make_response_error, make_response_text

parser = reqparse.RequestParser()
parser.add_argument('wav_url', type = str, required = True,
                    help = "wav_url cannot be blank!")
parser.add_argument('srt', type = str, required = True,
                    help = "srt cannot be blank!")
parser.add_argument('segment', type = inputs.boolean, required = False, default = False)
parser.add_argument('lang', type = str, required = True,
                    help = "lang cannot be blank!")


class STTResource(Resource):
    
    def post(self):
        request.get_json(force = True)
        args = parser.parse_args()
        
        stt_task = STTTask(wav_url = args['wav_url'], request_srt_content = args['srt'], segment = args['segment'],
                           lang = args['lang'])
        
        stt_task.save()
        
        celery.send_task('stt.chromium.run_stt', args = [str(stt_task.pk)])
        
        return make_response(stt_task.to_dict(), status = 201)


class STTTaskResource(Resource):
    
    def get(self, task_id):
        stt_task = get_stt_task_by_task_id(task_id)
        
        if not stt_task:
            return make_response_error('Cannot find task ID', 404)
        
        return make_response(stt_task.to_dict())


class STTTaskSRTResource(Resource):
    
    def get(self, task_id):
        stt_task = get_stt_task_by_task_id(task_id)
        
        if not stt_task:
            return make_response_error('Cannot find task ID', 404)
        
        if not stt_task.result_srt_content:
            return make_response_error('SRT Not available yet', 404)
        
        return make_response_text(stt_task.result_srt_content)
