#!/bin/bash

. ./bin/env.ini

FILE_NAME=`basename $0`

while getopts t: OPT
do
  case $OPT in
    "t" ) FLG_T="TRUE" ; CONAN_REGISTORY_URL="$OPTARG" ;;
      * ) echo "Usage: $FILE_NAME [-t target_url]" 1>&2
          exit 1 ;;
  esac
done

if [ "$FLG_T" != "TRUE" ]; then
  echo "[ERROR] please set target_url = http://url/to/conan/package/registory" 1>&2
  exit 1
fi

echo "upload ${PACKAGE_REFERENCE} to ${CONAN_REGISTORY_URL}"

conan remote add gitlab ${CONAN_REGISTORY_URL} --force
conan upload ${PACKAGE_REFERENCE} --all --remote=gitlab --confirm --force
