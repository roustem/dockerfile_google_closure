FROM java:latest
MAINTAINER Roustem <roustem@agilebits.com>

ADD https://dl.google.com/closure-compiler/compiler-latest.zip compiler-latest.zip
RUN unzip compiler-latest.zip
RUN mv compiler.jar closure-compiler.jar


RUN adduser -h /home/googleclosure -s /bin/bash -D googleclosure
USER googleclosure
WORKDIR /home/googleclosure


