#!/bin/bash

if [ $# -ne 2 ]; then
  echo "Finds the jar files containing a given class."
  echo "Usage: $0 [base directory] [class name]"
  exit 1
fi

for f in `find -L $1 -name \*.jar`; do
  grep -q $2 $f
  if [ $? == 0 ]; then
    echo $f
  fi
done
