#! /bin/bash

# @Author: cole
# @Date:   2018-11-10T14:11:36-05:00
# @Filename: template.sh
# @Last modified by:   cole
# @Last modified time: 2018-11-10T14:58:46-05:00

if [ $# -eq 0 ]
  then
    echo "No arguments supplied"
    echo "Invoke as /bin/bash files/bashtools/template.sh -s=<template> -d=<local_output_dir> -h=<ansible_target_host>"
    exit 1
fi

for i in "$@"
do
case $i in
    -s=*|--source=*)
    SRC="${i#*=}"
    shift # past argument=value
    ;;
    -d=*|--dest=*)
    DEST="${i#*=}"
    shift # past argument=value
    ;;
    -h=*|--host=*)
    HOST="${i#*=}"
    shift # past argument=value
    ;;
    *)
          # unknown option
    ;;
esac
done

ansible \
$HOST \
-c local \
-m template \
-a "src=$SRC dest=$DEST"
