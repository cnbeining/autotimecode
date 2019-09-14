#!/usr/bin/env python
#coding:utf-8
from flask import request
from flask_restful import reqparse, Resource
import time

from celery_app import celery
from db.vad import VADTask, get_vad_task_by_task_id
from resources.response import make_response, make_response_error, make_response_text

parser = reqparse.RequestParser()
parser.add_argument('wav_url', type = str, required = True,
                    help = "wav_url cannot be blank!")


class VADResource(Resource):

    def post(self):
        """request->JSON:
        
        Create task by URL.
        """
        request.get_json(force = True)
        args = parser.parse_args()
        
        vad_task = VADTask(wav_url = args['wav_url'])
        
        vad_task.save()
        
        celery.send_task('vad.run_vad', args = [str(vad_task.pk)])
        
        return make_response(vad_task.to_dict(), status = 201)


class VADTaskResource(Resource):
    
    def get(self, task_id):
        vad_task = get_vad_task_by_task_id(task_id)
        
        if not vad_task:
            return make_response_error('Cannot find task ID', 404)

        return make_response(vad_task.to_dict())


class VADTaskSRTResource(Resource):
    
    def get(self, task_id):
        vad_task = get_vad_task_by_task_id(task_id)
        
        if not vad_task:
            return make_response_error('Cannot find task ID', 404)
        
        if not vad_task.srt_content:
            return make_response_error('SRT Not available yet', 404)

        return make_response_text(vad_task.srt_content)
