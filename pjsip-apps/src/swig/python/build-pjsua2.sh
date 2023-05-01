yum localinstall --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
yum install ffmpeg ffmpeg-devel
ffmpeg -version

cd ../../../..
./configure --enable-shared --disable-libwebrtc
make dep
make
make install
cd pjsip-apps/src/swig
make python
