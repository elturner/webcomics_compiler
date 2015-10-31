#!/bin/bash

alicegrove_file="alicegrove.html"

# This script will download the latest alicegrove, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget www.alicegrove.com -o /dev/null -O ${alicegrove_file}

# write header
echo "<hr>"
echo "<h2><a href=\"http://www.alicegrove.com/\">Alice Grove</a></h2>"
echo "<br>"
echo "<br>"

# get information
cat ${alicegrove_file} | sed -n "s/.*<img src=\"\(http:\/\/41\.media.*\.jpg\)\" alt=\"\(.*\)\">.*/<img src=\"\1\"><\/img><br><br>\2<br><br>/p"

# clean up
rm -f ${alicegrove_file}
