# Tensorflow Serving VAD

-----

This is Tensorflow Serving server, running VAD model.

## Building & Running

```
docker build -t tensorflow_serving_vad .
docker run -v /tmp:/tmp -p 8500:8500 -p 8501:8501 tensorflow_serving_vad
```

Will expose HTTP REST and RPC ports

## Models

### cnn_td_original

#### 000001

The default model.

## Adding model

1. Export full model to `SavedModel`
2. Create the folder with the model name
3. Put the extracted `SavedModel` folder under a version number
4. Update `models.cfg` if new model is added; No need for version update
5. Rebuild the Docker image.

## Model structure

TODO: Add input and output

## FAQ

### Q: Why not run the raw model?

It's more elegant - and will free me from dealing with sessions. Tensorflow Serving is production ready.
