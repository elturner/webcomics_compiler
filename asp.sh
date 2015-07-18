#!/bin/bash

asp_file="asp.tml"

# This script will download the latest dog house diaries, and
# output a formatted version of the comic's image
# in html to the screen

sleep 1

# get latest file from website
wget www.amazingsuperpowers.com -o /dev/null -O ${asp_file}

# make title
echo "<hr><h2>Amazing Super Powers</h2><br><br>"

# get information
cat ${asp_file} | sed -n "s/<div id=\"comic-1\" class=\"comicpane\">\(.*\)<\/div>/<br><br>\1<br>/p"

cat ${asp_file} | sed -n "s/<div id=\"comic-1\" class=\"comicpane\"><img src=\"http:\/\/www\.amazingsuperpowers\.com\/comics\/.*\.png\" alt=\"\(.*\)\" title=\".*\"\/><\/div>/<br>\1<br>/p"

# clean up
rm -f ${asp_file}
