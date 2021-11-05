#!/bin/bash

FILE_NAME=`basename $0`

while getopts t: OPT
do
  case $OPT in
    "t" ) FLG_T="TRUE" ; BUILD_TYPE="$OPTARG" ;;
      * ) echo "Usage: $FILE_NAME [-t build_type]" 1>&2
          exit 1 ;;
  esac
done

if [ "$FLG_T" != "TRUE" ]; then
  echo "[ERROR] please set build_type = Debug or Release" 1>&2
  exit 1
fi

set -e
set -x

mkdir -p build
pushd build
  conan install .. --build=missing --generator cmake_multi --settings build_type=$BUILD_TYPE
  conan build ..
popd
