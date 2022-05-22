FROM ubuntu:22.04

WORKDIR /usr/src/app

COPY ./start_script.sh .

RUN apt-get update && apt-get install git -y

RUN apt-get install docker.io -y

RUN chmod +x script

ENTRYPOINT ["./start_script.sh"]

