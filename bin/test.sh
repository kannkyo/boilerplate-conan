#!/bin/bash

. ./bin/env.ini

echo "test ${PACKAGE_REFERENCE}"

mkdir -p test
pushd test
  conan test . ${PACKAGE_NAME}/${PACKAGE_VERSION}@${USER_CHANNEL}
popd
