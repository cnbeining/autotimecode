# Kaldi-Logmel

-----

This is a XMLRPC server running logmel computation.


## Building & Running

```
docker build -t kaldi_logmel .
docker run kaldi_logmel -v /tmp:/tmp
```

Will expose port 8080.

## FAQ

### Q: Why not pykaldi?

`pykaldi` is not compatible with original Kaldi.