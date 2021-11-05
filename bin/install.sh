#!/bin/bash

set -e
set -x

source ./bin/env.sh

mkdir -p build
pushd build
  conan install .. --build=missing
popd
