#!/bin/sh

yum -y localinstall --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
yum -y install ffmpeg ffmpeg-devel

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
