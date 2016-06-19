#!/bin/sh

set -e

V="$1"
test -z "$V" && { echo "missing busybox version to build">&2 ; exit 1; }

URL=http://busybox.net/downloads/busybox-$V.tar.bz2
BASE=$(basename "$URL")
DIR=${BASE%.tar.bz2}

if ! test -e "$BASE" ; then
    wget "$URL"
fi

if ! test -d "$DIR" ; then
    tar -xzf "$BASE"
fi

cd busybox-$V

rm -f .config

make allnoconfig

for opt in \
  CONFIG_SED \
  CONFIG_AWK \
  CONFIG_FEATURE_AWK_LIBM \
  CONFIG_FEATURE_AWK_GNU_EXTENSIONS \
  CONFIG_ASH \
  CONFIG_ASH_BASH_COMPAT \
  CONFIG_ASH_IDLE_TIMEOUT \
  CONFIG_ASH_JOB_CONTROL \
  CONFIG_ASH_ALIAS \
  CONFIG_ASH_GETOPTS \
  CONFIG_ASH_BUILTIN_ECHO \
  CONFIG_ASH_BUILTIN_PRINTF \
  CONFIG_ASH_BUILTIN_TEST \
  CONFIG_ASH_HELP \
  CONFIG_ASH_CMDCMD \
  CONFIG_ASH_MAIL \
  CONFIG_ASH_OPTIMIZE_FOR_SIZE \
  CONFIG_ASH_RANDOM_SUPPORT \
  CONFIG_ASH_EXPAND_PRMT \
  ;
do
  sed -i "/$opt\b/s/.*/$opt=y/" .config
done

make

cp busybox ../bin/busybox-sas
