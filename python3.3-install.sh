#!/usr/bin/env bash

# sudo apt purge -y libopencv* python-opencv
# sudo apt autoremove -y

# sudo apt update -y
# sudo apt upgrade -y

# sudo apt install -y build-essential cmake pkg-config git
# sudo apt install -y libjpeg-dev libtiff5-dev libpng-dev
# sudo apt install -y libavcodec-dev libavformat-dev libswscale-dev libxvidcore-dev libx264-dev libxine2-dev
# sudo apt install -y libv4l-dev v4l-utils
# sudo apt install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
# sudo apt install -y libgtk2.0-dev
# sudo apt install -y mesa-utils libgl1-mesa-dri libgtkgl2.0-dev libgtkglext1-dev
# sudo apt install -y libatlas-base-dev gfortran libeigen3-dev
# sudo apt install -y python2.7-dev python3-dev python-numpy python3-numpy



# mkdir ~/opencv
# cd ~/opencv
# wget -O opencv.zip https://github.com/opencv/opencv/archive/3.3.1.zip
# unzip opencv.zip && mv opencv-3.3.1 opencv
# wget -O opencv_contrib.zip https://github.com/opencv/opencv_contrib/archive/3.3.1.zip
# unzip opencv_contrib.zip && mv opencv_contrib-3.3.1 opencv_contrib

# cd opencv/
# mkdir build
# cd build

cd ~/opencv/opencv/build
cmake -D CMAKE_BUILD_TYPE=RELEASE \
-D CMAKE_INSTALL_PREFIX=/usr/local \
-D WITH_TBB=OFF \
-D WITH_IPP=OFF \
-D WITH_1394=OFF \
-D BUILD_WITH_DEBUG_INFO=OFF \
-D BUILD_DOCS=OFF \
-D INSTALL_C_EXAMPLES=ON \
-D INSTALL_PYTHON_EXAMPLES=ON \
-D BUILD_EXAMPLES=OFF \
-D BUILD_TESTS=OFF \
-D BUILD_PERF_TESTS=OFF \
-D WITH_QT=OFF \
-D WITH_GTK=ON \
-D WITH_OPENGL=ON \
-D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules \
-D WITH_V4L=ON  \
-D WITH_FFMPEG=ON \
-D WITH_XINE=ON \
-D BUILD_NEW_PYTHON_SUPPORT=ON \
-D OPENCV_GENERATE_PKGCONFIG=ON \
-D WITH_CUDA=OFF \
../

make -j4
sudo make install
sudo sh -c 'echo '/usr/local/lib' > /etc/ld.so.conf.d/opencv.conf'
sudo ldconfig

# sudo apt-get install -y ros-melodic-camera-info ressource-retreiver
# pip3 install av=0.5.2
# sudo add-apt-repository ppa:johnathonf/ffmpeg-4
# sudo apt-get install ffmpeg
