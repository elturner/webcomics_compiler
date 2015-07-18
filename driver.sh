#!/bin/bash

cd `dirname $0`

echo "preparing..."
./wcc.sh

echo "passing to server..."
sshpass scp comics.html eecs:~/public_html/

echo "opening page in firefox..."
firefox http://www.eecs.berkeley.edu/~elturner/comics.html &

echo "done"
