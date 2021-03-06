#!/usr/bin/env python
#coding:utf-8
from flask import Flask, jsonify, request
from flask_restful import reqparse, abort, Api, Resource, inputs
import time

from celery_app import celery
from db.fa import FATask, get_fa_task_by_task_id
from resources.response import make_response, make_response_error, make_response_text

parser = reqparse.RequestParser()
parser.add_argument('wav_url', type = str, required = True,
                    help = "wav_url cannot be blank!")
parser.add_argument('srt', type = str, required = True,
                    help = "srt cannot be blank!")
parser.add_argument('segment', type = inputs.boolean, required = False, default = False)


class FAResource(Resource):

    def post(self):
        request.get_json(force = True)
        args = parser.parse_args()
        
        fa_task = FATask(wav_url = args['wav_url'], request_srt_content=args['srt'], segment = args['segment'])

        fa_task.save()

        celery.send_task('fa.run_fa', args = [str(fa_task.pk)])
        
        return make_response(fa_task.to_dict(), status = 201)


class FATaskResource(Resource):
    
    def get(self, task_id):
        fa_task = get_fa_task_by_task_id(task_id)
        
        if not fa_task:
            return make_response_error('Cannot find task ID', 404)

        return make_response(fa_task.to_dict())


class FATaskSRTResource(Resource):
    
    def get(self, task_id):
        fa_task = get_fa_task_by_task_id(task_id)
    
        if not fa_task:
            return make_response_error('Cannot find task ID', 404)
        
        if not fa_task.result_srt_content:
            return make_response_error('SRT Not available yet', 404)
        
        return make_response_text(fa_task.result_srt_content)
