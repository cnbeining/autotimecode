#!/usr/bin/env python
# coding:utf-8

from bson import ObjectId
from mongoengine import DoesNotExist, ValidationError

from config import db


class FATaskStep(db.EmbeddedDocument):
    number = db.IntField(required = False, default = 0)
    comment = db.StringField(required = False, default = '')
    timestamp = db.IntField(required = False)
    
    def to_dict(self):
        return dict(self.to_mongo(fields = ['number', 'comment', 'timestamp']))


class FATask(db.Document):
    _id = db.ObjectIdField(required = False)
    wav_url = db.StringField(required = False, dafault = '')
    wav_tmp_path = db.StringField(required = False, dafault = '/tmp/tmppath')
    request_srt_content = db.StringField(required = False, dafault = '')
    result_srt_content = db.StringField(required = False, dafault = '')
    steps = db.EmbeddedDocumentListField(FATaskStep)
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
        json_obj = dict(
            self.to_mongo(fields = ['wav_url', 'request_srt_content', 'result_srt_content', 'steps', 'timestamp']))
        json_obj['id'] = str(self.pk)
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
