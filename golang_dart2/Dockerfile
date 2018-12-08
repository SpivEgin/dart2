FROM quay.io/spivegin/dart2

ENV GO_VERSION=1.11.2 \
    DARTPATH=/opt/dartlang/dart-sdk/bin \ 
    DARTPUB=~/.pub-cache \ 
    DARTPUBBIN=~/.pub-cache/bin \
    GRPCPROTO=/opt/protoc/bin/ \
    PATH=$GOBIN:$GOPATH:$GOROOT:$PATH

RUN mkdir /opt/golang /opt/tmp /opt/src /opt/go

ADD https://storage.googleapis.com/golang/go${GO_VERSION}.linux-amd64.tar.gz /opt/tmp/

ENV GOPATH=/opt/src/ \
    GOROOT=/opt/go/ \
    GOBIN=/opt/go/bin/ 

RUN tar -C /opt/ -xzf /opt/tmp/go${GO_VERSION}.linux-amd64.tar.gz &&\
    echo export  PATH=$GOBIN:$GOPATH:$GOROOT:$PATH > /root/.bashrc &&\
    rm /opt/tmp/go${GO_VERSION}.linux-amd64.tar.gz &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# ADD files/config.sh /opt/config/config_golang.sh
# RUN chmod +x /opt/config/config_golang.sh &&\
#     bash /opt/config/config_golang.sh

WORKDIR /opt/src/