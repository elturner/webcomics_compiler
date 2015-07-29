#!/bin/bash

tdhd_file="tdhd.tml"

# This script will download the latest dog house diaries, and
# output a formatted version of the comic's image
# in html to the screen

sleep 1

# get latest file from website
wget thedoghousediaries.com -o /dev/null -O ${tdhd_file}

# make title
echo "<hr><h2><a href=\"http://thedoghousediaries.com/\">The Dog House Diaries</a></h2><br><br>"

# get information
cat ${tdhd_file} | sed -n "s/.*<meta property=\"og:image\" content=\"\(http:\/\/thedoghousediaries.com\/.*\.png\)\".*/<img src=\"\1\"><\/img><br><br>/p"

# clean up
rm -f ${tdhd_file}
