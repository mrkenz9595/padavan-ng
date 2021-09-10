#!/bin/sh

DIR="out"
DL_NAME="mipsel-linux-uclibc.tar.xz"
DL_URL="https://github.com/mrkenz9595/padavan-toolchain/releases/download/v1.1/$DL_NAME"

if [ -d $DIR ]; then
	echo "$DIR exists!"
	exit
fi

curl -O -L $DL_URL && \
mkdir -p $DIR && \
tar -xvf $DL_NAME -C $DIR
