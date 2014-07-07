FROM dockerfile/java
MAINTAINER Tobias Unger

RUN adduser --disabled-password --gecos "" wso2

WORKDIR /home/wso2

USER wso2

RUN wget https://s3-eu-west-1.amazonaws.com/wso2-docker/wso2esb-4.8.1.zip

RUN unzip wso2esb-4.8.1.zip

WORKDIR /home/wso2/wso2esb-4.8.1/bin

RUN chmod 755 *.sh

EXPOSE 9443

EXPOSE 9763

EXPOSE 8243

EXPOSE 8280

ENV JAVA_HOME /usr/lib/jvm/java-7-oracle

ENV HOME /home/wso2

CMD ["/home/wso2/wso2esb-4.8.1/bin/wso2server.sh"]
