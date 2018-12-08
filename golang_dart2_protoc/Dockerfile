FROM quay.io/spivegin/golangdart2

RUN mkdir /opt/protoc/
ENV PROTOC=3.5.1 \
    GRPCPROTO=/opt/protoc/bin/ \
    PATH=$GRPCPROTO:$PATH
ADD https://github.com/google/protobuf/releases/download/v${PROTOC}/protoc-${PROTOC}-linux-x86_64.zip /opt/protoc/

ADD files/config.sh /opt/config/config_protoc.sh
# ADD files/protoc-3.5.1-linux-x86_64.zip /opt/protoc/
# RUN chmod +x /opt/config/config_protoc.sh &&\
#     bash /opt/config/config_protoc.sh && \
#     rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN echo export PATH=$GRPCPROTO:$PATH > /root/.bashrc &&\
    go get -u google.golang.org/grpc && \
    go get -u github.com/golang/protobuf/protoc-gen-go && \
    cd /opt/protoc/ && unzip protoc-${PROTOC}-linux-x86_64.zip && cd ~ && \
    pub global activate protoc_plugin && \
    rm -rf /opt/protoc/protoc-${PROTOC}-linux-x86_64.zip /var/lib/apt/lists/* /tmp/* /var/tmp/*