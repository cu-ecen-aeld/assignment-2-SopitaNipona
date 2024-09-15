#!/bin/bash

writefile=$1
writestr=$2

if [ -n "$writefile" ] && [ -n "$writestr" ];
then
  mkdir -p "$(dirname "$writefile")"
  echo "$writestr" > "$writefile"
  status=$?
  if [ $status -eq 0 ];
  then
    exit 0
  else
    exit 1
  fi
else
  exit 1
fi
