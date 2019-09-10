#!/usr/bin/env python
#coding:utf-8
from mongoengine import DoesNotExist, ValidationError

from config import db


class VADTaskStep(db.EmbeddedDocument):
    number = db.IntField(required = False, default = 0)
    comment = db.StringField(required = False, default = '')
    timestamp = db.IntField(required = False)
    
    def to_dict(self):
        return dict(self.to_mongo(fields=['number', 'comment', 'timestamp']))


class VADTask(db.Document):
    _id = db.ObjectIdField(required = False)
    wav_url = db.StringField(required = False, dafault = '')
    wav_tmp_path = db.StringField(required = False, dafault = '/tmp/tmppath')
    srt_content = db.StringField(required = False, dafault = '')
    steps = db.EmbeddedDocumentField(document_type = VADTaskStep)
    timestamp = db.IntField(required = False)

    meta = {
        'collection': 'vad_task',
        'index_background': True,
        'indexes': [
            'task_id',
            'timestamp'
        ],
        'strict': False
    }
    
    def to_dict(self):
        return dict(self.to_mongo(fields = ['_id', 'wav_url', 'srt_content', 'steps', 'timestamp']))


def get_vad_task_by_task_id(task_id):
    try:
        vad_task = VADTask.objects(__raw__ = {"_id": str(task_id)}).first()

    except (DoesNotExist, StopIteration, ValidationError, ValueError, TypeError) as e:
        return None
    
    if not vad_task:
        return None
    
    return vad_task
