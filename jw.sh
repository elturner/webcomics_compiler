#!/bin/bash

jw_file="jw.html"

# This script will download the latest johnny wander, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget www.johnnywander.com -o /dev/null -O ${jw_file}

# write header
echo "<hr>"
echo "<h2>Johnny Wander</h2>"
echo "<br>"
echo "<br>"

# get information
cat ${jw_file} | sed -n "s/<div class=\".*\"><div class=\".*\"><div class=\".*\"><img src=\"\(http:\/\/www\.johnnywander\.com\/files\/comics\/.*\.jpg\)\" alt=\".*\" title=\"\(.*\)\" width.* \/><\/div><\/div><\/div>.*/<hr><h2>Johnny Wander<\/h2><br><br><img src=\"\1\"><\/img><br><br>\2<br><br>/p"

# clean up
rm -f ${jw_file}
