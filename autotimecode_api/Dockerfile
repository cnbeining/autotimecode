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

ENTRYPOINT ["gunicorn", "gunicorn_app:app"]
CMD ["--bind=0.0.0.0:5055", "--workers=8"]
