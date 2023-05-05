#!/bin/sh

yum -y localinstall --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
yum -y install ffmpeg ffmpeg-devel
python -m pip install --user wheel

cd ../../../..
./configure --enable-shared --disable-libwebrtc
make dep
make
make install
cd pjsip-apps/src/swig
make python
cd python
pip list
make wheel
