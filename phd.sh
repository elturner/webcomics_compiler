#!/bin/bash

phd_file="phd.html"

# This script will download the latest phd comics, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget phdcomics.com -o /dev/null -O ${phd_file}

# get information
echo "<h2><a href=\"http://phdcomics.com/comics.php\">Ph.D. Comics</a></h2>"
echo "<br><br>"
cat ${phd_file} | sed -n "s/.*name=comic src=\(http:\/\/.*\.gif\).*/<img src=\"\1\"><\/img><br><br>/p"

# clean up
rm -f ${phd_file}
