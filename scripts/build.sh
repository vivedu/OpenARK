#!/usr/bin/env bash
# @see https://github.com/vivedu/OpenARK/issues/1

git clone https://github.com/augcog/OpenARK
cd OpenARK && mkdir build && cd build
cmake ..
make -j4