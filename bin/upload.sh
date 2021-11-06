#!/bin/bash

. ./bin/env.ini

echo "upload ${PACKAGE_REFERENCE} to remote"

conan upload ${PACKAGE_REFERENCE} --all --remote=gitlab --confirm --force
