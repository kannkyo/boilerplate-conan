#!/bin/bash

set -e
set -x

source ./bin/env.sh

mkdir -p test
pushd test
  conan test . ${PACKAGE_NAME}/${PACKAGE_VERSION}@${USER_CHANNEL}
popd
