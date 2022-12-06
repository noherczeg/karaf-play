#!/bin/bash

KARAF_VERSION=4.3.8

rm -rf karaf
rm apache-karaf-${KARAF_VERSION}.tar.gz

wget https://dlcdn.apache.org/karaf/4.3.8/apache-karaf-${KARAF_VERSION}.tar.gz

tar -xvzf apache-karaf-${KARAF_VERSION}.tar.gz

rm apache-karaf-${KARAF_VERSION}.tar.gz

mv apache-karaf-${KARAF_VERSION} karaf

rm -rf karaf/examples

touch karaf/data/.gitkeep
touch karaf/deploy/.gitkeep
