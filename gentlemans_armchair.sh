#!/bin/bash

file="spfcomics.html"

# get latest file from website
wget https://spfcomics.com -o /dev/null -O ${file}

# get information
echo "<hr>"
echo "<h2><a href="https://spfcomics.com/">SPF Comics</a></h2>"
echo "<br>"
echo "<br>"

cat ${file} | sed -n "s/.*<img src=\"\(https:\/\/66\.media\.tumblr\.com\/.*\.jpg\)\" .*/<img src=\"\1\"><br><br><br>/p"

cat ${file} | sed -n "s/.*data-image=\"\/\/assets\.amuniversal\.com\/\(.*\)\" data-date.*/<img src=\"https:\/\/assets\.amuniversal\.com\/\1\"><br><br><br>/p"

echo "<br>"
echo "<br>"
echo "<hr>"
echo "<br>"
echo "<br>"
echo "<h2><a href="https://thegentlemansarmchair.com/">The Gentleman's Armchair</a>"
echo "<br>"
echo "<br>"

# clean up
#rm -f ${file}
