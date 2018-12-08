#!bin/bash
DARTPATH=/opt/dartlang/dart-sdk/bin 
DARTPUB=~/.pub-cache 

export PATH=$DARTPATH:$DARTPUB:$PATH
echo export PATH=$DARTPATH:$DARTPUB:$PATH > ~/.bashrc
