FROM python:latest

ADD . /src
RUN echo 'test' >> hello.txt


