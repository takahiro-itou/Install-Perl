#!/bin/bash  -xue

if [[ $# -lt 1 ]] ; then
    echo  "Usage : $0 [Version]"    1>&2
    exit  2
fi

version=$1
prefix_root=${HOME}

wget https://www.cpan.org/src/5.0/perl-${version}.tar.gz
tar xvfz perl-${version}.tar.gz
cd perl-${version}

sh Configure -des -Duseshrplib  \
    -Dprefix=${prefix_root}/usr/local/perl/${version}   \
    &&  make  &&  make install
