#!/bin/bash

ZULU_VERSION=11.60.19

rm zulu11.60.19-ca-jdk11.0.17-linux_x64.tar.gz

wget https://cdn.azul.com/zulu/bin/zulu${ZULU_VERSION}-ca-jdk11.0.17-linux_x64.tar.gz

tar -xvzf zulu${ZULU_VERSION}-ca-jdk11.0.17-linux_x64.tar.gz

rm zulu11.60.19-ca-jdk11.0.17-linux_x64.tar.gz

mv zulu${ZULU_VERSION}-ca-jdk11.0.17-linux_x64 jdk11
