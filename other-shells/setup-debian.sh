#!/bin/sh

set -e

SHELLS="ksh zsh tcsh mksh dash"

mkdir -p bin

sudo -p "Enter sudo password to install various shells: " \
    apt-get --quiet install -y $SHELLS

for s in $SHELLS ;
do
    src=$(which "$s")
    ver=$(dpkg-query --showformat='${Version}' --show "$s")
    ver2=$(echo "$ver" | sed 's/-.*//')
    cp "$src" ./bin/$s-$ver2
done
