#!/usr/bin/env python
# coding:utf-8

import time

from bson import ObjectId
from mongoengine import DoesNotExist, ValidationError

from config import db
from db import TaskStep


class NMTTask(db.Document):
    request_srt_content = db.StringField(required = False, dafault = '')
    result_srt_content = db.StringField(required = False, dafault = '')
    steps = db.EmbeddedDocumentListField(TaskStep)
    timestamp = db.LongField(required = False, default = time.time)
    lang = db.StringField(required = False, dafault = 'en')

    meta = {
        'collection': 'nmt_task',
        'index_background': True,
        'indexes': [
            'timestamp'
        ],
        'strict': False
    }
    
    def add_step(self, step_obj):
        self.steps.append(step_obj)
        return self.save()
    
    def to_dict(self):
        json_obj = dict(
                self.to_mongo(
                        fields = ['request_srt_content', 'result_srt_content', 'steps', 'timestamp', 'lang']))
        json_obj.pop('_id', '')
        
        json_obj['steps'] = []
        for step in self.steps:
            json_obj['steps'].append(step.to_dict())
        
        json_obj['task_id'] = str(self.pk)
        return json_obj


def get_nmt_task_by_task_id(task_id):
    try:
        task_id = ObjectId(task_id)
    except:
        return None
    
    try:
        stt_task = NMTTask.objects(__raw__ = {"_id": task_id}).first()
    except (DoesNotExist, StopIteration, ValidationError, ValueError, TypeError) as e:
        return None
    
    if not stt_task:
        return None
    
    return stt_task
