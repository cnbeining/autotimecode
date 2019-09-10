#!/usr/bin/env python
#coding:utf-8
from flask import Flask, jsonify, request
from flask_restful import reqparse, abort, Api, Resource
import time
from db import VADTask, get_vad_task_by_task_id
from resources.response import make_response

parser = reqparse.RequestParser()
parser.add_argument('wav_url', type = str, required = True,
                    help = "wav_url cannot be blank!")


class VADResource(Resource):

    def post(self):
        request.get_json(force = True)
        args = parser.parse_args()
        
        vad_task = VADTask(wav_url = args['wav_url'], timestamp = int(time.time()))
        
        vad_task.save()
        
        # todo: add to queue
        
        return make_response(vad_task.to_dict(), status = 201)


class VADTaskResource(Resource):
    
    def get(self, task_id):
        vad_task = get_vad_task_by_task_id(task_id)
        
        if not vad_task:
            return jsonify({'err': 'Cannot find task ID'}), 404

        return make_response(vad_task.to_dict())
