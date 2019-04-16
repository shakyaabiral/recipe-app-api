FROM python:3.7-alpine
MAINTAINER Abiral Shakya(@shakyaabiral)

#  helpful for running python in docker
ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app