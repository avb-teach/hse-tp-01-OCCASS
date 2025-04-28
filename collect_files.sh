#!/bin/bash

max_depth=0

while [ "$#" -gt 0 ]; do
  if [ "$1" = "--max_depth" ]; then
    max_depth="$2"
    shift 2
  else
    if [ -z "$from" ]; then
      from="$1"
    elif [ -z "$to" ]; then
      to="$1"
    fi
    shift
  fi
done

if [ "$max_depth" -gt 0 ]; then
  find "$from" -type f -maxdepth "$max_depth" -exec cp {} "$to" \;
else
  find "$from" -type f -exec cp {} "$to" \;
fi
