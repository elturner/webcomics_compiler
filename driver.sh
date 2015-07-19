#!/bin/bash

cd `dirname $0`

echo "preparing..."
./wcc.sh

echo "opening page..."
open comics.html &

echo "done"
