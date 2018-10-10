FROM ubuntu:latest

RUN apt-get update && \
    apt-get -y install curl && \
    curl -sL https://ibm.biz/idt-installer | bash

CMD /bin/bash