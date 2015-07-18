#!/bin/bash

cd /home/elturner/code/bash/webcomics_compiler/

echo "preparing..."
./wcc.sh

echo "passing to server..."
sshpass scp comics.html eecs:~/public_html/

echo "opening page in firefox..."
firefox http://www.eecs.berkeley.edu/~elturner/comics.html &

echo "done"
