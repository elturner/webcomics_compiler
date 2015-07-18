#!/bin/bash

dilbert_file="dilbert.html"

# This script will download the latest dilbert, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget www.dilbert.com -o /dev/null -O ${dilbert_file}

# get information
echo "<hr>"
echo "<h2><a href="http://www.dilbert.com/">Dilbert</a></h2>"
echo "<br>"
echo "<br>"
cat ${dilbert_file} | sed -n "s/.*<img alt=\"\(.*\)\" class=\".*\" height=\".*\" src=\"\(.*\)\" width=\".*\" \/>/<img src=\"\2\"><\/img><br>\1<br><br>/p"
echo "<br>"
echo "<br>"

# clean up
rm -f ${dilbert_file}
