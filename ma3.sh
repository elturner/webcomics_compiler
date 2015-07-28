#!/bin/bash

ma3_file="ma3.html"

# This script will download the latest Menage a 3, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget www.ma3comic.com -o /dev/null -O ${ma3_file}

# write header
echo "<hr>"
echo "<h2><a href=\"http://www.ma3comic.com/\">Menage a 3</a></h2>"
echo "<br>"
echo "<br>"

# get information
cat ${ma3_file} | sed -n "s/.*<img.* src=\".*\(\/comics\/.*\.png\)\".*\/>/<img src=\"http:\/\/www\.ma3comic\.com\1\"><\/img><br><br>/p"

cat ${ma3_file} | sed -n "s/.*<img.* src=\".*\(\/comics\/.*\.gif\)\".*\/>/<img src=\"http:\/\/www\.ma3comic\.com\1\"><\/img><br><br>/p"

cat ${ma3_file} | sed -n "s/.*<img.* src=\".*\(\/comics\/.*\.jpg\)\".*\/>/<img src=\"http:\/\/www\.ma3comic\.com\1\"><\/img><br><br>/p"

# clean up
rm -f ${ma3_file}
