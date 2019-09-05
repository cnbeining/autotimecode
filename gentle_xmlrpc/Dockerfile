FROM cnbeining/gentle:latest

LABEL maintainer="i@cnbeining.com"

COPY . /app
WORKDIR /app

RUN pip3 install -r requirements.txt

EXPOSE 8000

ENTRYPOINT ["/app/docker-entrypoint.sh"]
