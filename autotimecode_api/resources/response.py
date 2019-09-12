#!/usr/bin/env python
#coding:utf-8
import json
from json import JSONEncoder

from flask import jsonify, Response


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
    """"""
    return Response(
            json.dumps({
                "error": payload
            }, cls = JSONEncoder), mimetype = "application/json", status = status)
