#!/bin/bash

vs_file="virtualshackles.html"

# This script will download the latest virtual shackles, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget www.virtualshackles.com -o /dev/null -O ${vs_file}

# get information
cat ${vs_file} | sed -n "s/.*<img src=\"\(\/img\/.*\.jpg\)\".*\/>/<hr>\n<h2>Virtual Shackles<\/h2>\n<br>\n<br>\n<img src=\"http:\/\/www\.virtualshackles\.com\1\"><\/img>\n<br>\n<br>\n/p"

cat ${vs_file} | sed -n "s/.*<div id=\"orionComments\" .*>\(.*\)<\/div>/Orion: \1\n<br>\n/p"

cat ${vs_file} | sed -n "s/.*<div id=\"jackComments\" .*>\(.*\)<\/div>/Jack: \1\n<br>\n<br>\n/p"

# clean up
rm -f ${vs_file}
