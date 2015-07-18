#!/bin/bash

dc_file="dc.html"

# This script will download the latest dangerously chloe, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget www.dangerouslychloe.com -o /dev/null -O ${dc_file}

# write header
echo "<hr>"
echo "<h2>Dangerously Chloe</h2>"
echo "<br>"
echo "<br>"

# get information
cat ${dc_file} | sed -n "s/.*<img.* src=\".*\(\/comics\/\w*\.png\)\".*/<img src=\"http:\/\/www\.dangerouslychloe\.com\1\"><\/img><br><br>/p"

cat ${dc_file} | sed -n "s/.*<img.* src=\".*\(\/comics\/\w*\.gif\)\".*/<img src=\"http:\/\/www\.dangerouslychloe\.com\1\"><\/img><br><br>/p"

cat ${dc_file} | sed -n "s/.*<img.* src=\".*\(\/comics\/\w*\.jpg\)\".*/<img src=\"http:\/\/www\.dangerouslychloe\.com\1\"><\/img><br><br>/p"

# clean up
rm -f ${dc_file}
