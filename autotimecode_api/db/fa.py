#!/usr/bin/env python
# coding:utf-8
import time

from bson import ObjectId
from mongoengine import DoesNotExist, ValidationError

from config import db
from db import TaskStep


class FATask(db.Document):
    wav_url = db.StringField(required = False, dafault = '')
    wav_tmp_path = db.StringField(required = False, dafault = '/tmp/tmppath')
    request_srt_content = db.StringField(required = False, dafault = '')
    result_srt_content = db.StringField(required = False, dafault = '')
    steps = db.EmbeddedDocumentListField(TaskStep)
    timestamp = db.LongField(required = False, default = time.time)
    segment = db.BooleanField(required = False, dafault = False)
    
    meta = {
        'collection': 'fa_task',
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
                    fields = ['wav_url', 'request_srt_content', 'result_srt_content', 'steps', 'timestamp', 'segment']))
        json_obj.pop('_id', '')
        
        json_obj['steps'] = []
        for step in self.steps:
            json_obj['steps'].append(step.to_dict())
        
        json_obj['task_id'] = str(self.pk)
        return json_obj


def get_fa_task_by_task_id(task_id):
    try:
        task_id = ObjectId(task_id)
    except:
        return None
    
    try:
        fa_task = FATask.objects(__raw__ = {"_id": task_id}).first()
    except (DoesNotExist, StopIteration, ValidationError, ValueError, TypeError) as e:
        return None
    
    if not fa_task:
        return None
    
    return fa_task
