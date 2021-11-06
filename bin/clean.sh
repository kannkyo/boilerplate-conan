#!/bin/bash

. ./bin/env.ini

echo "clean ${PACKAGE_REFERENCE}"

FILE_NAME=`basename $0`

while getopts f OPT
do
  case $OPT in
    "f" ) FORCE="TRUE" ;;
      * ) echo "Usage: $FILE_NAME [-f force]" 1>&2
          exit 1 ;;
  esac
done

rm -rf build/

if [ "$FORCE" == "TRUE" ]; then
  rm -rf .conan
fi
