#!/bin/bash

set -e
set -x

mkdir -p build
pushd build
  conan install .. --build=missing --generator cmake_multi --settings build_type=Debug
  conan build ..
popd
