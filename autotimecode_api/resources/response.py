#!/usr/bin/env python
#coding:utf-8
import json

from bson import ObjectId
from flask import jsonify, Response


class JSONEncoder(json.JSONEncoder):
    
    def default(self, o):
        if isinstance(o, bytes):
            return ''
        if isinstance(o, ObjectId):
            return str(o)
        
        return super(JSONEncoder, self).default(o)


def merge_dicts(*dict_args):
    """
    Given any number of dicts, shallow copy and merge into a new dict,
    precedence goes to key value pairs in latter dicts.
    """
    result = {}
    for dictionary in dict_args:
        result.update(dictionary)
    return result


def make_response(payload, status = 200):
    """"""
    return Response(
            json.dumps({
                "data": payload
            }, cls = JSONEncoder), mimetype = "application/json", status = status)


def make_response_error(payload, status = 500):
    """For JSON response"""
    return Response(
            json.dumps({
                "error": payload
            }, cls = JSONEncoder), mimetype = "application/json", status = status)


def make_response_text(payload, status = 200):
    """for SRT"""
    return Response(payload, mimetype = "text/plain", status = status)
