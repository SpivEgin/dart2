#!bin/bash
DARTPATH=/opt/dartlang/dart-sdk/bin 
DARTPUB=~/.pub-cache 
GOPATH=/opt/src/
GOROOT=/opt/go/
GOBIN=/opt/go/bin/ 

export GOBIN=${GOBIN}
export GOPATH=${GOPATH}
export GOROOT=${GOROOT}
export PATH=$DARTPATH:$DARTPUB:$GOBIN:$GOPATH:$GOROOT:$PATH

echo export GOBIN=${GOBIN} > ~/.bashrc  
echo export GOPATH=${GOPATH} >> ~/.bashrc  
echo export GOROOT=${GOROOT} >> ~/.bashrc  
echo export PATH=$DARTPATH:$DARTPUB:$GOBIN:$GOPATH:$GOROOT:$PATH >> ~/.bashrc  
echo export PATH=$DARTPATH:$DARTPUB:$GOBIN:$GOPATH:$GOROOT:$PATH >> ~/.bashrc    
