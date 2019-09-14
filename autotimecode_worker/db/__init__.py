import time

from mongoengine import EmbeddedDocument, IntField, StringField, LongField


class TaskStep(EmbeddedDocument):
    number = IntField(required = False, default = 0)
    comment = StringField(required = False, default = '')
    timestamp = LongField(required = False, default = time.time)
    
    def to_dict(self):
        return dict(self.to_mongo(fields = ['number', 'comment', 'timestamp']))
