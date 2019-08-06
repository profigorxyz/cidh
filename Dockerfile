FROM python:3.7.4-alpine
MAINTAINER prof.igor@colegioinfante.info

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

