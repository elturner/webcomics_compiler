#!/bin/bash

beefpaper_file="beefpaper.html"

# This script will download the latest beefpaper comic, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget beefpaper.com -o /dev/null -O ${beefpaper_file}

# get information
cat ${beefpaper_file} | sed -n "s/.*<img src=\"\(http:\/\/beefpaper.com\/wp-content\/uploads\/.*\.png\)\" alt=\"\(.*\)\" title=\".*>/<hr>\n<a href=\"http:\/\/beefpaper\.com\"><h2>Beefpaper<\/h2><\/a>\n<br>\n<br>\n<img src=\"\1\"><\/img>\n<br>\n<br>\n\2\n<br>\n<br>\n/p"

# clean up
rm -f ${beefpaper_file}
