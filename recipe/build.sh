#!/bin/bash

# Build casadi
mkdir build_casadi
cd build_casadi

cmake . .. \
      -GNinja \
      -DCMAKE_INSTALL_PREFIX=$PREFIX \
      -DCMAKE_BUILD_TYPE=Release \
      -DCMAKE_PREFIX_PATH=$PREFIX \
      -DMATH_LIBRARY_BACKEND="Casadi" \
      -DBUILD_EXAMPLE=OFF \
      -DMODULE_ACTUATORS=ON \
      -DMODULE_MUSCLES=ON \
      -DBINDER_PYTHON3=ON \
      -DBINDER_MATLAB=OFF \
      -DPython3_EXECUTABLE=$PREFIX/bin/python

ninja install
