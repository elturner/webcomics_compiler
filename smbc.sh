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
cat ${smbc_file} | sed -n "s/<img src='\(http:\/\/www\.smbc-comics\.com\/comics\/.*\.gif\)'><br>/<img src=\"\1\" width=\"800\"><\/img><br><br>/p"
cat ${smbc_file} | sed -n "s/<img src='\(http:\/\/www\.smbc-comics\.com\/comics\/.*\.png\)'>/<img src=\"\1\" width=\"800\"><\/img><br><br>/p"
cat ${smbc_file} | sed -n "s/<div id=\"cc-comicbody\"><img title=\"\(.*\)\" src=\"\(.*\/comics\/.*\.png\)\" .* \/>.*/<img src=\"http:\/\/www\.smbc-comics\.com\2\" width=\"800\"><\/img><br><br>\1<br><br>/p"


# the after comic 'votey'
cat ${smbc_file} | sed -n "s/<img src='.*smbc-comics\.com\(\/comics\/.*after\.gif\)'>/<img src=\"http:\/\/www\.smbc-comics\.com\1\" width=\"600\"><\/img><br><br>/p"
cat ${smbc_file} | sed -n "s/.*<img src='.*smbc-comics\.com\(\/comics\/.*after\.png\)'>/<img src=\"http:\/\/www\.smbc-comics\.com\1\" width=\"600\"><\/img><br><br>/p"

# clean up
rm -f ${smbc_file}
