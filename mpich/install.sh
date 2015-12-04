#!/bin/bash

version=$1

tar xzvf mpich-$version.tar.gz

cd mpich-$version

./configure --prefix=/opt/mpich/$version
make -j 8
make install

cd ..
