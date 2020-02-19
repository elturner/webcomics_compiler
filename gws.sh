#!/bin/bash

gws_file="gws.html"

# This script will download the latest girls with slingshots, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget www.girlswithslingshots.com -o /dev/null -O ${gws_file}

# write title
echo "<hr>"
echo "<a href=\"http://www.girlswithslingshots.com/\"><h2>Girls with Slingshots</h2></a>"
echo "<br>"
echo "<br>"

# get information
cat ${gws_file} | sed -n "s/.*<img title=\"\(.*\)\" src=\"\(https:\/\/www.girlswithslingshots\.com\/comics\/.*\.jpg\)\".*/<img src=\"\2\"><\/img><br><br>\1<br><br>/p"
cat ${gws_file} | sed -n "s/.*<img title=\"\(.*\)\" src=\"\(https:\/\/www.girlswithslingshots\.com\/comics\/.*\.gif\)\".*/<img src=\"\2\"><\/img><br><br>\1<br><br>/p"

cat ${gws_file} | sed -n "s/.*class=\"cc-newsbody\"><p>\(.*\)<\/p>.*/<br><br>\1<br><br>/p"

# clean up
rm -f ${gws_file}
