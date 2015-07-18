#!/bin/bash

vs_file="zenpencils.html"

# This script will download the latest zen pencils, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
#(echo "" ; sleep 1 ; echo "GET / HTTP/1.0" ; sleep 1 ; echo "" ; sleep 1 ; echo "") | telnet zenpencils.com 80 > ${vs_file}

echo "<hr>"
echo "<h2><a href=\"http://zenpencils.com/\">Zen Pencils</a></h2>"
echo "<br>"
echo "<br>"

# get information
#cat ${vs_file} | sed -n "s/.*<div id=\"comic-1\" class=\"comicpane\"><img src=\"\(http.*\.jpg\).*\".*>/<img src=\"\1\"><\/img><br><br>/p"

# clean up
rm -f ${vs_file}
