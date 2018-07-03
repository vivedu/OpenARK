librealsense#!/usr/bin/env bash
# @see https://github.com/vivedu/OpenARK/issues/1


# Installing OpenCV
cd opencv-3.3.0
mkdir build && cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D FORCE_VTK=ON -D WITH_TBB=ON -D WITH_V4L=ON -D WITH_QT=ON -D WITH_OPENGL=ON -D WITH_CUBLAS=ON -D CUDA_NVCC_FLAGS="-D_FORCE_INLINES" -D WITH_GDAL=ON -D WITH_XINE=ON -D BUILD_EXAMPLES=ON ..
make -j4
make install

# Installing Boost
cd eigen-eigen-5a0156e40feb
mkdir build && cd build && cmake ..
make -j4&&make install

# Installing FLANN
cd flann-1.8.4-src
mkdir build && cd build && cmake ..
make -j4&&make install

# Installing VTK
cd VTK-8.1.1
mkdir build && cd build && cmake ..
make install

# Building PCL From Source
#TODO

# Installing RealSense SDK
cd librealsense
mkdir build && cd build
cmake ../ -DBUILD_EXAMPLES=true
uninstall && make clean && make -j4 && make install
