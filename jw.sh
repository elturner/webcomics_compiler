#!/bin/bash

jw_file="jw.html"

# This script will download the latest johnny wander, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget www.johnnywander.com -o /dev/null -O ${jw_file}

# get information
cat ${jw_file} | sed -n "s/<div class=\".*\"><div class=\".*\"><div class=\".*\"><img src=\"\(http:\/\/www\.johnnywander\.com\/files\/comics\/.*\.jpg\)\" alt=\".*\" title=\"\(.*\)\" width.* \/><\/div><\/div><\/div>.*/<hr>\n<h2>Johnny Wander<\/h2>\n<br>\n<br>\n<img src=\"\1\"><\/img>\n<br>\n<br>\n\2\n<br>\n<br>\n/p"

# clean up
rm -f ${jw_file}
