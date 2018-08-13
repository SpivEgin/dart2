#!bin/bash
DARTPATH=/opt/dartlang/dart-sdk/bin 
DARTPUB=~/.pub-cache
DARTPROTO=~/.pub-cache/bin 
GOPATH=/opt/src/
GOROOT=/opt/go/
GOBIN=/opt/go/bin/
GRPCPROTO=/opt/protoc/bin/

export GOBIN=${GOBIN}
export GOPATH=${GOPATH}
export GOROOT=${GOROOT}
export GRPCPROTO=${GRPCPROTO}
export DARTPROTO=${DARTPROTO}
export PATH=$DARTPATH:$DARTPUB:$GOBIN:$GOPATH:$GOROOT:$GRPCPROTO:$PATH

echo export GOBIN=${GOBIN} > ~/.bashrc  
echo export GOPATH=${GOPATH} >> ~/.bashrc  
echo export GOROOT=${GOROOT} >> ~/.bashrc
echo export GRPCPROTO=${GRPCPROTO} >> ~/.bashrc  
echo export PATH=$DARTPATH:$DARTPUB:$GOBIN:$GOPATH:$GOROOT:$GRPCPROTO:$DARTPROTO:$PATH >> ~/.bashrc

PROTOC=3.5.1
go get -u google.golang.org/grpc && \
go get -u github.com/golang/protobuf/protoc-gen-go && \
cd /opt/protoc/ && unzip protoc-${PROTOC}-linux-x86_64.zip && cd ~ && \
pub global activate protoc_plugin