#!/bin/bash

qc_file="qc.html"

# This script will download the latest questionable content, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget www.questionablecontent.net -o /dev/null -O ${qc_file}

# write header
echo "<hr>"
echo "<h2>Questionable Content</h2>"
echo "<br>"
echo "<br>"

# get information
cat ${qc_file} | sed -n "s/.*<img.* src=\".*\(\/comics\/.*\.png\)\">/<img src=\"http:\/\/www\.questionablecontent\.net\1\"><\/img>\n<br>\n<br>\n/p"

cat ${qc_file} | sed -n "s/.*<img.* src=\".*\(\/comics\/.*\.gif\)\">/<img src=\"http:\/\/www\.questionablecontent\.net\1\"><\/img>\n<br>\n<br>\n/p"

cat ${qc_file} | sed -n "s/.*<img.* src=\".*\(\/comics\/.*\.jpg\)\">/<img src=\"http:\/\/www\.questionablecontent\.net\1\"><\/img>\n<br>\n<br>\n/p"

# clean up
rm -f ${qc_file}
