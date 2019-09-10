#!/usr/bin/env python
#coding:utf-8
import flask_restful
from flask import Flask
from flask_cors import CORS
import os
from config import db
from error_handlers import register_errorhandlers
from resources import HelloWorld
from resources.vad import VADTaskResource, VADResource


def create_app():
    app = Flask(__name__)
    
    # Logging
    # Load other Flask config
    app_flask = Flask(__name__)
    api = flask_restful.Api(app_flask)

    api.add_resource(HelloWorld, '/')
    api.add_resource(VADResource, '/vad')
    api.add_resource(VADTaskResource, '/vad/<task_id>')

    register_errorhandlers(app)
    
    CORS(app, resources = {
        r'/*': {"origins": "*"},
    })
    app.url_map.strict_slashes = False

    app.config['MONGODB_SETTINGS'] = {'host': os.environ['MONGO_URL']}

    db.init_app(app)

    return app
