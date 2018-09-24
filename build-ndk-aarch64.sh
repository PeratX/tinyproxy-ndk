#!/bin/sh
export ABI="aarch64-linux-android"

export ANDROID_SRC_ROOT="/home/peratx/android-ndk"
export SYSROOT="$ANDROID_SRC_ROOT/platforms/android-21/arch-arm64"
export CCBIN="$ANDROID_SRC_ROOT/toolchains/$ABI-4.9/prebuilt/linux-x86_64/bin"
export EXTRA="--sysroot=$SYSROOT"
export CC="$CCBIN/$ABI-gcc $EXTRA"
export CXX="$CCBIN/$ABI-g++ $EXTRA -I$ANDROID_SRC_ROOT/sources/cxx-stl/gabi++/include"
export AR="$CCBIN/$ABI-ar $EXTRA"
export STRIP="$CCBIN/$ABI-strip"
export LD="$CCBIN/$ABI-ld"

export CFLAGS="-pie -fPIE "
export LDFLAGS="-pie -fPIE $EXTRA  "
export PATH="$CCBIN:$PATH"

./configure --build=x86_64-pc-linux-gnu "--host=$ABI" --enable-reverse --enable-upstream --enable-transparent

cp /usr/include/sysexits.h ./src

rm -rf config.h
cp config.h.bak config.h

make clean
make -j 4

"$ABI-strip" ./src/tinyproxy

echo
echo Done!
