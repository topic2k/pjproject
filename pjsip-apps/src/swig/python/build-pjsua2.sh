sudo yum localinstall --nogpgcheck https://download1.rpmfusion.org/free/el/rpmfusion-free-release-7.noarch.rpm
sudo yum install ffmpeg ffmpeg-devel
ffmpeg -version

./configure --enable-shared --disable-libwebrtc
make dep
make
make install
cd pjsip-apps/src/swig
make python
