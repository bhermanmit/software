#!/bin/bash

version=$1

rm -rf git-$version

tar xzvf git-$version.tar.gz

cd git-$version

./configure --prefix=/opt/git/$version
make -j 8
make install

cd ..
