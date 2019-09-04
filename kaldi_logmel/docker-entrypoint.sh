#!/usr/bin/env bash

# https://github.com/kaldi-asr/kaldi/blob/master/docker/debian9.8-cpu/Dockerfile#L39
export KALDI_ROOT=/opt/kaldi/

# Need compute-fbank-feats and copy-feats
export PATH=$KALDI_ROOT/src/featbin/:$PATH

python3 run.py
