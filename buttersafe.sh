#!/bin/bash

buttersafe_file="buttersafe.html"

# This script will download the latest girls with slingshots, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget http://buttersafe.com/ -o /dev/null -O ${buttersafe_file}

# get information
echo "<hr>"
echo "<a href=\"http://buttersafe.com\"><h2>Buttersafe</h2></a>"
echo "<br>"
echo "<br>"

cat ${buttersafe_file} | sed -n "s/.*<img src=\"\(http:\/\/buttersafe.com\/comics\/.*\.jpg\)\".*/<img src=\"\1\"><\/img><br>/p"

# clean up
rm -f ${buttersafe_file}
