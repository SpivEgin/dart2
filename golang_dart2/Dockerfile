FROM quay.io/spivegin/dart2:latest

ENV GO_VERSION=1.11.2

RUN mkdir /opt/golang /opt/tmp /opt/src /opt/go

ADD https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz /opt/tmp/

RUN tar -C /opt/ -xzf /opt/tmp/go${GO_VERSION}.linux-amd64.tar.gz &&\
    rm /opt/tmp/go${GO_VERSION}.linux-amd64.tar.gz &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ADD files/config.sh /opt/config/config_golang.sh
RUN chmod +x /opt/config/config_golang.sh &&\
    bash /opt/config/config_golang.sh
    
WORKDIR /opt/src/