#!/bin/bash

set -e
set -x

USER_CHANNEL=user/testing
PACKAGE_VERSION=`cat conanfile.py | grep -e "version" |sed 's/ //g' | sed 's/"//g' | sed 's/version=//g'`
PACKAGE_NAME=`cat conanfile.py | grep -e "name" |sed 's/ //g' | sed 's/"//g' | sed 's/name=//g'`
