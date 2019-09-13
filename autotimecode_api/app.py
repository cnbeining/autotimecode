#!/usr/bin/env python
#coding:utf-8
import flask_restful
from flask import Flask
from flask_cors import CORS
import os
from config import db
from error_handlers import register_errorhandlers
from resources import HelloWorld
from resources.fa import FAResource, FATaskResource
from resources.vad import VADTaskResource, VADResource


def create_app():
    app = Flask(__name__)
    
    # Logging
    # Load other Flask config
    register_errorhandlers(app)
    
    CORS(app, resources = {
        r'/*': {"origins": "*"},
    })
    app.url_map.strict_slashes = False

    app.config['MONGODB_SETTINGS'] = {'host': os.environ['MONGO_URL']}

    db.init_app(app)

    api = flask_restful.Api(app)

    api.add_resource(HelloWorld, '/')
    api.add_resource(VADResource, '/vad/')
    api.add_resource(VADTaskResource, '/vad/<task_id>')
    api.add_resource(FAResource, '/fa/')
    api.add_resource(FATaskResource, '/fa/<task_id>')
    
    return app


if __name__ == "__main__":
    app = create_app()
    app.run(host = "0.0.0.0", port = 5055)