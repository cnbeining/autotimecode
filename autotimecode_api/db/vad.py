#!/usr/bin/env python
#coding:utf-8

from bson import ObjectId
from mongoengine import DoesNotExist, ValidationError

from config import db


class VADTaskStep(db.EmbeddedDocument):
    number = db.IntField(required = False, default = 0)
    comment = db.StringField(required = False, default = '')
    timestamp = db.IntField(required = False)
    
    def to_dict(self):
        return dict(self.to_mongo(fields=['number', 'comment', 'timestamp']))


class VADTask(db.Document):
    wav_url = db.StringField(required = False, dafault = '')
    wav_tmp_path = db.StringField(required = False, dafault = '/tmp/tmppath')
    srt_content = db.StringField(required = False, dafault = '')
    steps = db.EmbeddedDocumentListField(VADTaskStep)
    timestamp = db.IntField(required = False)

    meta = {
        'collection': 'vad_task',
        'index_background': True,
        'indexes': [
            'timestamp'
        ],
        'strict': False
    }
    
    def to_dict(self):
        json_obj = dict(self.to_mongo(fields = ['wav_url', 'srt_content', 'timestamp']))
        json_obj.pop('_id', '')
        
        json_obj['steps'] = []
        for step in self.steps:
            json_obj['steps'].append(step.to_dict())
        
        json_obj['task_id'] = str(self.pk)
        return json_obj


def get_vad_task_by_task_id(task_id):
    try:
        task_id = ObjectId(task_id)
    except:
        return None
    
    try:
        vad_task = VADTask.objects(__raw__ = {"_id": task_id}).first()
    except (DoesNotExist, StopIteration, ValidationError, ValueError, TypeError) as e:
        return None
    
    if not vad_task:
        return None
    
    return vad_task
