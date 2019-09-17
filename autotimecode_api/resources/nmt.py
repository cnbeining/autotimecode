#!/usr/bin/env python
# coding:utf-8
from flask import Flask, jsonify, request
from flask_restful import reqparse, abort, Api, Resource, inputs

from celery_app import celery
from db.nmt import NMTTask, get_nmt_task_by_task_id
from resources.response import make_response, make_response_error, make_response_text

parser = reqparse.RequestParser()
parser.add_argument('srt', type = str, required = True,
                    help = "srt cannot be blank!")
parser.add_argument('lang', type = str, required = True,
                    help = "lang cannot be blank!")


class NMTResource(Resource):
    
    def post(self):
        request.get_json(force = True)
        args = parser.parse_args()
        
        nmt_task = NMTTask(request_srt_content = args['srt'], lang = args['lang'])

        nmt_task.save()
        
        celery.send_task('translate.google.run', args = [str(nmt_task.pk)])
        
        return make_response(nmt_task.to_dict(), status = 201)


class NMTTaskResource(Resource):
    
    def get(self, task_id):
        nmt_task = get_nmt_task_by_task_id(task_id)
        
        if not nmt_task:
            return make_response_error('Cannot find task ID', 404)
        
        return make_response(nmt_task.to_dict())


class NMTTaskSRTResource(Resource):
    
    def get(self, task_id):
        nmt_task = get_nmt_task_by_task_id(task_id)
        
        if not nmt_task:
            return make_response_error('Cannot find task ID', 404)
        
        if not nmt_task.result_srt_content:
            return make_response_error('SRT Not available yet', 404)
        
        return make_response_text(nmt_task.result_srt_content)
