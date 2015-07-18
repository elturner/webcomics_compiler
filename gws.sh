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
cat ${gws_file} | sed -n "s/.*<img title=\"\(.*\)\" src=\"\(http:\/\/www\.girlswithslingshots\.com\/comics\/.*\.jpg\)\" id=\"comic\".*/<img src=\"\2\"><\/img>\n<br>\n<br>\n\1\n<br>\n<br>\n/p"
cat ${gws_file} | sed -n "s/.*<img title=\"\(.*\)\" src=\"\(http:\/\/www\.girlswithslingshots\.com\/comics\/.*\.jpeg\)\" id=\"comic\".*/<img src=\"\2\"><\/img>\n<br>\n<br>\n\1\n<br>\n<br>\n/p"
cat ${gws_file} | sed -n "s/.*<img title=\"\(.*\)\" src=\"\(http:\/\/www\.girlswithslingshots\.com\/comics\/.*\.png\)\" id=\"comic\".*/<img src=\"\2\"><\/img>\n<br>\n<br>\n\1\n<br>\n<br>\n/p"
cat ${gws_file} | sed -n "s/.*<img title=\"\(.*\)\" src=\"\(http:\/\/www\.girlswithslingshots\.com\/comics\/.*\.gif\)\" id=\"comic\".*/<img src=\"\2\"><\/img>\n<br>\n<br>\n\1\n<br>\n<br>\n/p"

# clean up
rm -f ${gws_file}
