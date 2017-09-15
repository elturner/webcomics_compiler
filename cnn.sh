#!/bin/bash

cnn_file="cnn.html"

# This script will download the latest CNN headlines, and
# output a formatted version in html to the screen

# get latest file from website
wget http://lite.cnn.io/en -o /dev/null -O ${cnn_file}

# write header
echo "<hr>"
echo "<h2><a href=\"http://lite.cnn.io/en/\">CNN Headlines</a></h2>"
echo "<br>"
echo "<br>"

# get information
cat ${cnn_file} | sed -n "s/.*<main>\(.*\)<\/main>.*/\1/p"

# clean up
rm -f ${cnn_file}
