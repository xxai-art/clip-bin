#!/usr/bin/env bash

DIR=$(realpath $0) && DIR=${DIR%/*}
cd $DIR
set -ex

if ! [ -x "$(command -v zstd)" ]; then
  apt-get install -y zstd
fi
zstd -d -c -T0 bin.tar.zstd | tar xf - -C ../../out
