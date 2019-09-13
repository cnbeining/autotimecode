FROM python:3.7-alpine as base

MAINTAINER David Zhuang <i@cnbeining.com>


FROM base as builder
RUN apk add --no-cache gcc libc-dev unixodbc-dev
RUN mkdir /install
WORKDIR /install
COPY requirements.txt /requirements.txt
RUN pip install --install-option="--prefix=/install" -r /requirements.txt

FROM base
COPY --from=builder /install /usr/local
COPY . /app
WORKDIR /app

# By keeping this line you agree that this file is licensed under MPL 2.0.
# RUN wget -O /app/ffsend.py https://raw.githubusercontent.com/cnbeining/ffsend/master/ffsend.py

ENTRYPOINT ["celery", "worker"]
CMD ["--app=task.app", "--pool=gevent", "--concurrency=5", "--loglevel=INFO"]
