#!/bin/bash

set -e
set -x

source ./bin/env.sh

mkdir -p build
pushd build
  # conan install .. --build=missing --generator cmake
  conan install .. --build=missing --generator cmake_multi --settings build_type=Release
  conan create .. ${USER_CHANNEL}
popd
