import json

from flask import Response, current_app, request


def register_errorhandlers(app):
    def render_error(error):
        extra = {
            'flask': {
                'endpoint': str(request.endpoint).lower(),
                'view_args': request.view_args,
            },
            'error': {
                'code': error.code,
                "msg": "{message}".format(message = str(error))
            }
        }
    
        message = 'Error request for "%s %s" from %s' % (request.method, request.url, extra.get('remote_addr', '-'))
    
        current_app.logger.error(message, extra = extra)
    
        return Response(json.dumps({
            "code": error.code,
            "msg": "{message}".format(message = str(error))
        }), mimetype = "application/json", status = 400)
    
    for errcode in [404, 500]:
        app.errorhandler(errcode)(render_error)
    return None
