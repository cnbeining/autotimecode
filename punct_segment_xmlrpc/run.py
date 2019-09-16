#!/usr/bin/env python
# coding:utf-8
# Author: David Zhuang  --<i@cnbeining.com>
# Purpose: XMLRPC Server for punctuation restoration and sentence segmentation.

# File must be compatible with Python 3.6

from socketserver import ThreadingMixIn
from xmlrpc.server import SimpleXMLRPCServer
from xmlrpc.server import SimpleXMLRPCRequestHandler
import logging
from deepcorrect_model import DeepCorrect
from deepsegment_model import DeepSegment


class ThreadXMLRPCServer(ThreadingMixIn, SimpleXMLRPCServer): pass


# Restrict to a particular path.
class RequestHandler(SimpleXMLRPCRequestHandler):
    rpc_paths = ('/RPC2',)


def ping():
    return 'pong!'


def correct_sentence(sentence):
    """str->str
    
    correct single line.
    
    Note this line should not be too long"""
    global deepcorrect_model
    return deepcorrect_model.correct(sentence)[0]['sequence']


def segment_sentence(sentence):
    """str, bool->list of str

    Segment longer sentences into shorter ones.

    Note this will strip down all the punctuations:
    use correct arg to call DeepCorrect on segmented sentences.

    Don't pass in sentences that's too long.
    """
    global deepsegment_model
    results = deepsegment_model.segment(sentence)
    results = [correct_sentence(i) for i in results]

    return results


if __name__ == '__main__':
    # If running by CLI, create RPC server that will listen on
    server = ThreadXMLRPCServer(("0.0.0.0", 8000),
                                requestHandler = RequestHandler)
    
    # Enabling this will allow XML-RPC introspection functions - only use in trusted environment!
    server.register_introspection_functions()
    
    server.register_function(ping)
    global deepcorrect_model
    deepcorrect_model = DeepCorrect('/app/deeppunct_params_en', '/app/deeppunct_checkpoint_google_news')
    
    global deepsegment_model
    deepsegment_model = DeepSegment()
    
    # pre-heat models
    logging.warning(deepcorrect_model.correct("hi"))
    logging.warning('DeepCorrect is loaded!')
    server.register_function(correct_sentence)

    logging.warning(deepsegment_model.segment("Hi how are you? I am fine thank you."))
    logging.warning('DeepSegment is loaded!')
    server.register_function(segment_sentence)

    # allow Ctrl+C exit
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        exit()
