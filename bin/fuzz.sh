#!/bin/bash

. ./bin/env.ini

echo "fuzzing ${PACKAGE_REFERENCE}"

mkdir -p build
pushd build
  cp -r ../fuzz .
  afl-fuzz -i fuzz/input/ -o fuzz/output/ ./main.o 
popd
