#!/bin/bash

sheldon_file="qc.html"

# This script will download the latest sheldon comic, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget -U "Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.17 (KHTML, like Gecko) Chrome/24.0.1312.27 Safari/537.17" http://www.sheldoncomics.com/ -o /dev/null -O ${sheldon_file}

# write header
echo "<hr>"
echo "<h2><a href=\"http://www.sheldoncomics.com/\">Sheldon Comics</a></h2>"
echo "<br>"
echo "<br>"

# get information
cat ${sheldon_file} | sed -n "s/.*<img src=\"\(http:\/\/cdn\.sheldoncomics\.com\/strips\/main\/.*\.png\)\".*/<img src=\"\1\"><\/img><br><br>/p"

# clean up
rm -f ${sheldon_file}
