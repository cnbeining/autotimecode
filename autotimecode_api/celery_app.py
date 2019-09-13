#!/usr/bin/env python
#coding:utf-8
import os
from celery import Celery

celery = Celery('task', broker = os.environ['CELERY_BROKER_URL'])
