#!/bin/bash

oglaf_file="oglaf.html"

# This script will download the latest oglaf, and
# output a formatted version of the comic's image
# in html to the screen

# start the listing
echo "<hr>"
echo "<h2><a href=\"http://oglaf.com/\">Oglaf</a></h2>"
echo "<br>"
echo "<br>"

# get the first webpage
webpage="oglaf.com"

# get latest file from website
wget ${webpage} -o /dev/null -O ${oglaf_file}

# get information for each page of the story
cat ${oglaf_file} | sed -n "s/.*<b><img id=\"strip\" src=\"\(\/media\/comic\/.*\.jpg\)\" alt=\"\(.*\)\" title=\"\(.*\)\" \/><\/b>/<img src=\"http:\/\/oglaf\.com\1\"><\/img>\n<br>\n<br>\n\2\n<br>\n<br>\n\3\n<br>\n<br>\n/p"

# get the next page of the story
webpage=`cat ${oglaf_file} | sed -n "s/.*<a href=\"\(.*\)\"><div id=\"nx\" class=\"nav_ro\"><\/div><\/a>/oglaf\.com\1/p"`

# clean up
rm -f ${oglaf_file}
