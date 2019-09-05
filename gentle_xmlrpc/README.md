# Gentle XMLRPC

-----

This is a XMLRPC server running FA.


## Building & Running

```
docker build -t gentle_xmlrpc .
docker run -v /tmp:/tmp -p 8000:8000 gentle_xmlrpc
```

Will expose port 8000.

## Developing

Make sure the code is compatible with Python 3.6 as the base image is Ubuntu 18.04 - unless if you are interested in rebuilding everything.

## FAQ

### Q: Why not `serve.py`?

To save the time for duplicate resampling.