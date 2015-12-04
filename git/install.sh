#!/bin/bash

version=$1

./configure --prefix=/opt/git/$version
make -j 8
make install
