FROM quay.io/spivegin/golang_dart2_dev

RUN mkdir /opt/protoc/
ENV PROTOC=3.5.1 

ADD https://github.com/google/protobuf/releases/download/v${PROTOC}/protoc-${PROTOC}-linux-x86_64.zip /opt/protoc/

ADD files/config.sh /opt/config/config_protoc.sh
# ADD files/protoc-3.5.1-linux-x86_64.zip /opt/protoc/
RUN chmod +x /opt/config/config_protoc.sh &&\
    bash /opt/config/config_protoc.sh && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
