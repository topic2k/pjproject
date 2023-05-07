#!/bin/sh

cd ../../../..
./configure --enable-shared --disable-libwebrtc
make dep
make
make install
cd pjsip-apps/src/swig
export USE_PYTHON3=1
make python
cd python
make wheel
