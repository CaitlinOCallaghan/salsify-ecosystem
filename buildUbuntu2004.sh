#!/bin/bash

sudo apt-get -y install \
  g++ \
  libboost-all-dev \
  libglew-dev \
  libglfw3-dev \
  libglu1-mesa-dev \
  libjpeg-dev \
  libxcursor-dev \
  libxi-dev \
  libxinerama-dev \
  libxrandr-dev \
  libx264-dev \
  yasm

git clone https://github.com/excamera/alfalfa.git

cd alfalfa
./autogen.sh
./configure
make-j$(nproc)
sudo make install
cd ..
