#!/bin/bash

beefpaper_file="beefpaper.html"

# This script will download the latest beefpaper comic, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget beefpaper.com -o /dev/null -O ${beefpaper_file}

# write header
echo "<hr>"
echo "<h2><a href=\"http://beefpaper.com/\">Beef Paper</a></h2>"
echo "<br>"
echo "<br>"

# get information
cat ${beefpaper_file} | sed -n "s/.*<img src=\"\(http:\/\/beefpaper.com\/wp-content\/uploads\/.*\.png\)\" alt=\"\(.*\)\" title=\".*>/<img src=\"\1\"><\/img><br><br>\2<br><br>/p"
cat ${beefpaper_file} | sed -n "s/.*<img src=\"\(http:\/\/beefpaper.com\/wp-content\/uploads\/.*\.gif\)\" alt=\"\(.*\)\" title=\".*>/<img src=\"\1\"><\/img><br><br>\2<br><br>/p"

# clean up
rm -f ${beefpaper_file}
