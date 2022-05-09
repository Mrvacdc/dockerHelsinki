FROM ubuntu:20.04
WORKDIR /usr/src/app
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y dos2unix
COPY startScript.sh .
RUN dos2unix startScript.sh
CMD ./startScript.sh

