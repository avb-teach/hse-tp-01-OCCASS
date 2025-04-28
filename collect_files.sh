#!/bin/bash

if [ -n "$4" ]; then
    max_depth=$4
else
    max_depth=0
fi

find $1 -type f -maxdepth $max_depth -exec cp {} $2 \;

