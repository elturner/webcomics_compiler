#!/bin/bash

sfp_file="sfp.html"

# This script will download the latest girls with slingshots, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget strongfemaleprotagonist.com -o /dev/null -O ${sfp_file}

# get information
echo "<hr>"
echo "<a href=\"http://strongfemaleprotagonist.com\"><h2>Strong Female Protagonist</h2></a>"
echo "<br>"
echo "<br>"

cat ${sfp_file} | sed -n "s/.*<img class=\".*\" src=\"\(http:\/\/strongfemaleprotagonist.com\/.*\.jpg\)\".*/<img src=\"\1\"><\/img><br><br>/p"
cat ${sfp_file} | sed -n "s/.*<img class=\".*\" src=\"\(http:\/\/strongfemaleprotagonist.com\/.*\.png\)\".*/<img src=\"\1\"><\/img><br><br>/p"
cat ${sfp_file} | sed -n "s/.*<img class=\".*\" title=\"\(.*\)\" src=\"\(http:\/\/strongfemaleprotagonist.com\/.*\.jpg\)\".*/<img src=\"\2\"><\/img><br><br>\1<br>/p"
cat ${sfp_file} | sed -n "s/.*<img class=\".*\" title=\"\(.*\)\" src=\"\(http:\/\/strongfemaleprotagonist.com\/.*\.png\)\".*/<img src=\"\2\"><\/img><br><br>\1<br>/p"

# clean up
rm -f ${sfp_file}
