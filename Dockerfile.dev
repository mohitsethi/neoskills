FROM python:latest

ENTRYPOINT [ "/bin/sleep", "10000000" ]

ADD . /src
RUN echo 'test' >> hello.txt
RUN chmod +x /src/start.sh

# CMD [ "executable" ]

