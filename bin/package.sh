#!/bin/bash

. ./bin/env.ini

echo "package ${PACKAGE_REFERENCE}"

mkdir -p build
pushd build
  conan install .. --build=missing --generator cmake_multi --settings build_type=Release
  conan create .. ${USER_CHANNEL}
popd
