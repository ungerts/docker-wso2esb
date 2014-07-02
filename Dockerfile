FROM ubuntu
MAINTAINER Tobias Unger

RUN apt-get update

RUN apt-get install -y openjdk-7-jdk unzip

RUN adduser --disabled-password --gecos "" wso2

WORKDIR /home/wso2

USER wso2

CMD /bin/bash
