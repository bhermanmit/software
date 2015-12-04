#!/bin/bash

version=$1

tar xzvf git-$version.tar.gz

./configure --prefix=/opt/git/$version
make -j 8
make install
