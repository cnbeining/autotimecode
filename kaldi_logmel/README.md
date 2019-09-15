# Kaldi-Logmel

-----

This is a XMLRPC server running logmel computation.


## Building & Running

```
docker build -t kaldi_logmel .
docker run -v /tmp:/tmp -p 8000:8000 kaldi_logmel
```

Will expose port 8000.

## Developing

Make sure the code is compatible with Python 3.5 as the base image is Debian 9.6 - unless if you are interested in rebuilding everything.

Input WAV should be 16K.

Take only relevant code from Kaldi to avoid an extensive build.

## FAQ

### Q: Why not pykaldi?

`pykaldi` is not compatible with original Kaldi.
