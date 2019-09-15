FROM tensorflow/tensorflow:1.14.0-py3


MAINTAINER David Zhuang <i@cnbeining.com>

COPY . /app
WORKDIR /app

RUN apt-get install -y python3-pip && \
    pip3 install -r /app/requirements.txt

EXPOSE 8000

ENTRYPOINT ["/app/docker-entrypoint.sh"]
