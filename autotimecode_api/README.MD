# Autotimecode API

This is the REST API for Autotimecode project.

Built with `Flask-Restful`, `MongoEngine` and `Celery`.

This project is stateless: long running tasks are located in `autotimecode_worker`, served by Celery.

## API Documentation

Detailed API document can be found at https://documenter.getpostman.com/view/2034007/SVmtxJzc?version=latest .

## Running

```
docker build -t autotimecode_api .
docker run -e MONGO_URL=mongo://localhost -e CELERY_BROKER_URL=amqp:// -p 5055:5055 autotimecode_api 
```

## Developing

- Add HTTP endpoints under `resources`
- Add `MongoEngine` objects and DAOs under `db`
- Plug the endpoints in `app.py`
- Profit!

