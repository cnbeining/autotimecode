#!/usr/bin/env python
# coding:utf-8
# Author: David Zhuang  --<i@cnbeining.com>
# Purpose: XMLRPC Server for punctuation restoration and sentence segmentation.

# File must be compatible with Python 3.6

from socketserver import ThreadingMixIn
from xmlrpc.server import SimpleXMLRPCServer
from xmlrpc.server import SimpleXMLRPCRequestHandler
import srt

from deepcorrect_model import DeepCorrect

class ThreadXMLRPCServer(ThreadingMixIn, SimpleXMLRPCServer): pass


# Restrict to a particular path.
class RequestHandler(SimpleXMLRPCRequestHandler):
    rpc_paths = ('/RPC2',)


deepcorrect_model = DeepCorrect('/app/deeppunct_params_en', '/app/deeppunct_checkpoint_google_news')


def ping():
    return 'pong!'


def correct_sentence(sentence):
    """str->str
    
    correct single line.
    
    Note this line should not be too long"""
    return deepcorrect_model.correct(sentence)[0]['sequence']


if __name__ == '__main__':
    # If running by CLI, create RPC server that will listen on
    server = ThreadXMLRPCServer(("0.0.0.0", 8000),
                                requestHandler = RequestHandler)
    
    # Enabling this will allow XML-RPC introspection functions - only use in trusted environment!
    server.register_introspection_functions()
    
    server.register_function(ping)
    server.register_function(correct_sentence)

    # allow Ctrl+C exit
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        exit()
