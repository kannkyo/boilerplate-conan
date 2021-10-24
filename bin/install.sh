#!/bin/bash

set -e
set -x

mkdir -p build
pushd build
  conan install .. --build=missing
popd
