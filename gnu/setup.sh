#!/bin/sh

set -e

prog="$1"
test -z "$1" && { echo "missing GNU program name + version" >&2 ; exit 1 ; }

mkdir -p bin


p=${prog%-*}
url=http://ftpmirror.gnu.org/$p/$prog.tar.gz
tar=$(basename "$url")
dir=${tar%.tar.*}

if ! test -e "$tar" ; then
    wget "$url"
fi
if ! test -d "$dir" ; then
    tar -xf "$tar"
fi
( cd "$dir" ;
  test -e "Makefile" || ./configure ;
  make )

case $p in
    sed) src=$dir/sed/sed
         # add 'g' prefix to sed, indicating that is' a GNU program
         dst=g${prog}
        ;;
    gawk) src=$dir/gawk
          dst=$prog
        ;;
    bash) src=$dir/bash
          dst=$prog
        ;;
esac

cp "$src" "bin/$dst"
strip "bin/$dst"
