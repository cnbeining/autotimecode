import time

from config import db


class TaskStep(db.EmbeddedDocument):
    number = db.IntField(required = False, default = 0)
    comment = db.StringField(required = False, default = '')
    timestamp = db.LongField(required = False, default = time.time)
    
    def to_dict(self):
        return dict(self.to_mongo(fields = ['number', 'comment', 'timestamp']))
