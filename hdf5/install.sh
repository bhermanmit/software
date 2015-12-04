#!/bin/bash

version=$1

rm -rf hdf5-$version

tar xzvf hdf5-$version.tar.gz

# Do serial
cd hdf5-$version
./configure --prefix=/opt/hdf5/$version --enable-fortran \
            --enable-fortran2003
make -j 8
make install
cd ..

rm -rf hdf5-$version 

tar xzvf hdf5-$version.tar.gz

# Do parallel
cd hdf5-$version
FC=/opt/mpich/3.2/bin/mpif90 CC=/opt/mpich/3.2/bin/mpicc \
./configure --prefix=/opt/phdf5/$version --enable-fortran \
            --enable-fortran2003 --enable-parallel
make -j 8
make install

cd ..
