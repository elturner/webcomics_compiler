#!/bin/bash

drive_file="drive.html"

# This script will download the latest drive comic, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget drive.com -o /dev/null -O ${drive_file}

# write header
echo "<hr>"
echo "<h2><a href=\"http://drivecomic.com/\">Drive: The SciFi Comic</a></h2>"
echo "<br>"
echo "<br>"

# get information
cat ${drive_file} | sed -n "s/.*<img src=\"\(http:\/\/cdn\.drivecomic\.com\/strips\/main\/.*\.png\)\" .*/<img src=\"\1\"><\/img><br><br>/p"
echo "<br>"

# clean up
rm -f ${drive_file}
