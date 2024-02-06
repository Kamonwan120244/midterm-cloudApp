FROM alpine:3.16

WORKDIR /app

RUN apk update && apk upgrade --no-cache

RUN apk add --no-cache python3 py3-pip

LABEL maintainer="Kamonwan <Kamonwan.pl@kkumail.com>"

COPY . /app

# สร้าง virtual environment
RUN python3 -m venv /venv
RUN /venv/bin/pip3 install Flask mysql-connector-python

EXPOSE 5000

CMD ["/venv/bin/python3", "flask_mysql.py"]