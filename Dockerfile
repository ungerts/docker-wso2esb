FROM dockerfile/java
MAINTAINER Tobias Unger

RUN adduser --disabled-password --gecos "" wso2

WORKDIR /home/wso2

USER wso2

CMD /bin/bash
