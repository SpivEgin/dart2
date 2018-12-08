FROM quay.io/spivegin/golangdart2:latest

RUN mkdir /opt/protoc/
ENV PROTOC=3.6.1 \
    DARTPATH=/opt/dartlang/dart-sdk/bin \ 
    DARTPUB=~/.pub-cache \ 
    DARTPUBBIN=~/.pub-cache/bin \
    GRPCPROTO=/opt/protoc/bin/ \
    GOPATH=/opt/src/ \
    GOROOT=/opt/go/ \
    GOBIN=/opt/go/bin/ \
    GRPCPROTO=/opt/protoc/bin/ \
    PATH=$GRPCPROTO:$PATH
ADD https://github.com/google/protobuf/releases/download/v${PROTOC}/protoc-${PROTOC}-linux-x86_64.zip /opt/protoc/

# ADD files/config.sh /opt/config/config_protoc.sh
# RUN chmod +x /opt/config/config_protoc.sh &&\
#     bash /opt/config/config_protoc.sh && \
#     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN go get -u github.com/golang/protobuf/{proto,protoc-gen-go} &&\
    go get -u google.golang.org/grpc && \
    cd /opt/protoc/ && unzip protoc-${PROTOC}-linux-x86_64.zip && cd ~ && \
    echo export PATH=$GRPCPROTO:$PATH >> /root/.bashrc &&\
    pub global activate protoc_plugin && \
    rm -rf /opt/protoc/protoc-${PROTOC}-linux-x86_64.zip /var/lib/apt/lists/* /tmp/* /var/tmp/*