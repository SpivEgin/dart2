#
# LegionMarket Dartlang base

# Pull base image.
FROM debian:stretch-slim

# Install Dart.
ENV DART_VERSION=2.1.0
RUN apt-get update &&\
    apt-get install -y unzip wget git build-essential &&\
    apt-get -y autoclean &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Set environment variables.
RUN mkdir -p /opt/dart /opt/dart/code /opt/dart/data /opt/dart/bin /opt/dartlang /opt/config ~/.pub-cache/bin
#      https://storage.googleapis.com/dart-archive/channels/stable/release/2.0.0/sdk/dartsdk-linux-x64-release.zip
ADD https://storage.googleapis.com/dart-archive/channels/stable/release/${DART_VERSION}/sdk/dartsdk-linux-x64-release.zip /opt/dartlang/

RUN cd /opt/dartlang/ && \
    unzip dartsdk-linux-x64-release.zip && \
    rm dartsdk-linux-x64-release.zip
ENV DARTPATH=/opt/dartlang/dart-sdk/bin \ 
    DARTPUB=~/.pub-cache \ 
    DARTPUBBIN=~/.pub-cache/bin \
    PATH=$DARTPATH:$DARTPUB:$PATH \
    HOME=$HOME:$DARTPUBBIN
RUN echo export PATH=$DARTPATH:$DARTPUB:$DARTPUBBIN:$PATH > ~/.bashrc
# Define working directory.
WORKDIR /opt/dart/code

# Define default command.
#CMD ["bash"]
#ENTRYPOINT ["/bin/bash"]
