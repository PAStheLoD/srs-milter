#!/bin/bash


set -e


# git clone https://github.com/PAStheLoD/libspf2.git libspf2

cd libspf2

./configure --prefix=/usr

make

make install


cd ..

wget https://www.libsrs2.org/srs/libsrs2-1.0.18.tar.gz -O libsrs2-1.0.18.tar.gz

echo b9c189caa227487e90566f65430345f09a3d545fc286a3eb0c445aee3a74905c1a9248ce78b36a7cfb6a2936f6cd1efbe99ba7b8df49a613a81c6435396f5422  libsrs2-1.0.18.tar.gz | sha512sum -c - || exit 1


tar xf libsrs2-1.0.18.tar.gz


cd libsrs2-1.0.18

./configure --prefix=/usr

make

make install


