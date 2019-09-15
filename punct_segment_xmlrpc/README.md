# punct_segment_xmlrpc

-----

This is a XMLRPC server for punctuation restoration and sentence segmentation.

Based on https://github.com/bedapudi6788/deepsegment , https://github.com/bedapudi6788/deepcorrect and https://github.com/bedapudi6788/txt2txt .

## Building & Running

```
docker build -t punct_segment_xmlrpc .
docker run -v /tmp:/tmp -p 8000:8000 punct_segment_xmlrpc
```

Will expose port 8000.

## Developing

Make sure the code works with Python 3.6.8.

## FAQ

### Why not use pip?

txt2txt version issue.
