FROM openjdk:9-jre
MAINTAINER Roustem <roustem@agilebits.com>

ADD https://dl.google.com/closure-compiler/compiler-latest.zip compiler-latest.zip
RUN unzip compiler-latest.zip
RUN mv closure-compiler*.jar closure-compiler.jar
RUN rm compiler-latest.zip

VOLUME ["/workdir"]

COPY ./entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
	


