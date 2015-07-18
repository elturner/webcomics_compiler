#!/bin/bash

smbc_file="smbc.html"

# This script will download the latest smbc, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget www.smbc-comics.com -o /dev/null -O ${smbc_file}

# make title
echo "<hr><h2><a href=\"http://www.smbc-comics.com/\">SMBC</a></h2><br><br>"

# get information
cat ${smbc_file} | sed -n "s/<img src='\(http:\/\/www\.smbc-comics\.com\/comics\/.*\.gif\)'><br>/<img src=\"\1\" width=\"800\"><\/img>\n<br>\n<br>/p"
cat ${smbc_file} | sed -n "s/<img src='\(http:\/\/www\.smbc-comics\.com\/comics\/.*\.png\)'>/<img src=\"\1\" width=\"800\"><\/img>\n<br>\n<br>/p"
cat ${smbc_file} | sed -n "s/<div id=\"comicbody\"><img title=\"\(.*\)\" src=\"\(comics\/.*\.png\)\" .* \/>.*/<img src=\"http:\/\/smbc-comics\.com\/\2\" width=\"800\"><\/img>\n<br>\n<br>\n\1\n<br>\n<br>\n/p"


# the after comic 'votey'
cat ${smbc_file} | sed -n "s/<img src='\(http:\/\/www\.smbc-comics\.com\/comics\/.*after\.gif\)'>/<img src=\"\1\" width=\"600\"><\/img>\n<br>\n<br>\n/p"
cat ${smbc_file} | sed -n "s/.*<img src='\(http:\/\/smbc-comics\.com\/comics\/.*after\.png\)'>/<img src=\"\1\" width=\"600\"><\/img>\n<br>\n<br>\n/p"

# clean up
rm -f ${smbc_file}
