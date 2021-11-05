#!/bin/bash

. ./bin/env.ini

echo "install ${PACKAGE_REFERENCE}"

mkdir -p build
pushd build
  conan install .. --build=missing
popd
