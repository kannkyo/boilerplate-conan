#!/bin/bash

set -e
set -x

. ./bin/env.ini

mkdir -p test
pushd test
  conan test . ${PACKAGE_NAME}/${PACKAGE_VERSION}@${USER_CHANNEL}
popd
