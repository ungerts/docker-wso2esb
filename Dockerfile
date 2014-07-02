FROM dockerfile/java
MAINTAINER Tobias Unger

RUN adduser --disabled-password --gecos "" wso2

WORKDIR /home/wso2

USER wso2

RUN wget http://mirrors.ae-online.de/apache/tomcat/tomcat-7/v7.0.54/bin/apache-tomcat-7.0.54.zip

RUN unzip apache-tomcat-7.0.54.zip

WORKDIR /home/wso2/apache-tomcat-7.0.54/bin

RUN chmod 755 *.sh

EXPOSE 8080

CMD ["/home/wso2/apache-tomcat-7.0.54/bin/catalina.sh", "run"]
