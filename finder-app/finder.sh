#!/bin/bash

filesdir=$1
searchstr=$2

if [ -d "$filesdir" ] && [ ! -z "$searchstr" ];
then
  files=$(ls -1 | wc -l)
  lines=$(grep -r "$filesdir" "$searchstr" | wc -l)
  if [ $? -eq 0 ];
  then
    echo "The number of files are ${files} and the number of matching lines are ${lines}"
  fi

  exit 0
else


  exit 1
fi
