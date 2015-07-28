#!/bin/bash

manly_file="manlyguys.html"

# This script will download the latest the punchline is machismo, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget thepunchlineismachismo.com -o /dev/null -O ${manly_file}

echo "<hr>"
echo "<a href=\"http://thepunchlineismachismo.com\"><h2>Manly Guys Doing Manly Things</h2></a>"
echo "<br>"
echo "<br>"

# get information
cat ${manly_file} | sed -n "s/.*<img src=\"\(http:\/\/thepunchlineismachismo.com\/wp-content\/uploads\/.*\.jpg\)\".*alt=\"\(.*\)\".*title=\"\(.*\)\".*/<img src=\"\1\"><\/img><br>\2<br>\3\<br>/p"
cat ${manly_file} | sed -n "s/.*<img src=\"\(http:\/\/thepunchlineismachismo.com\/wp-content\/uploads\/.*\.png\)\".*alt=\"\(.*\)\".*title=\"\(.*\)\".*/<img src=\"\1\"><\/img><br>\2<br>\3\<br>/p"

# clean up
rm -f ${manly_file}
