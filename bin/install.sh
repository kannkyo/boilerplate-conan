#!/bin/bash

set -e
set -x

. ./bin/env.ini

mkdir -p build
pushd build
  conan install .. --build=missing
popd
