#!/bin/bash

bbc_file="bbc.html"

# This script will download the latest stories on BBC, and
# output a formatted version of the comic's image
# in html to the screen

NUM_LINES=10

# get latest file from website
wget www.bbc.co.uk/news/ -o /dev/null -O ${bbc_file}

# get information
echo "<hr>"
echo "<h2><a href=\"http://www.bbc.co.uk/news\">BBC Top Stories</a></h2>"
echo "<br>"
echo "<br>"
cat ${bbc_file} | sed -n "s/.*<a class=\"story\" .*href=\"\(\/news.*\)\">\(.*\)<\/a>/<a href=\"http:\/\/www\.bbc\.co\.uk\1\"><br>\2<br><\/a><br>/p" | head -n ${NUM_LINES}
cat ${bbc_file} | sed -n "s/.*<a class=\"story\" .*href=\"\(http:\/\/www\.bbc\.co\.uk\/news.*\)\">\(.*\)<\/a>/<a href=\"\1\"><br>\2<br><\/a><br>/p" | head -n ${NUM_LINES}

cat ${bbc_file} | sed -n "s/.*<span class=\"title-link__title-text\">\(.*\)<\/span>/<br>\1<br>/p" | head -n ${NUM_LINES}

# clean up
rm -f ${bbc_file}
