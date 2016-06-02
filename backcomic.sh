#!/bin/bash

backcomic_file="backcomic.html"

# This script will download the latest backcomic comic, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget http://backcomic.com/ -o /dev/null -O ${backcomic_file}

# make header
echo "<hr>"
echo "<a href=\"http://backcomic.com/\"><h2>Back Comic</h2></a>"
echo "<br>"
echo "<br>"

# get information
cat ${backcomic_file} | sed -n "s/.*<img class=\"comic-page\" src=\"\(s\/.*\.png\)\"><img.*/<img src=\"http:\/\/backcomic.com\/\1\"><\/img><br><br>\<br>/p"

# clean up
rm -f ${backcomic_file}
