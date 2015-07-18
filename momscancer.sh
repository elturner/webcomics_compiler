#!/bin/bash

momscancer_file="momscancer.html"

# This script will download the latest momscancer comic, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget www.gocomics.com/moms-cancer -o /dev/null -O ${momscancer_file}

# make header
echo "<hr>"
echo "<a href=\"http://www.gocomics.com/moms-cancer\"><h2>Mom's Cancer</h2></a>"
echo "<br>"
echo "<br>"

# get information
cat ${momscancer_file} | sed -n "s/.*<img alt=\"\(.*\)\" class=\"strip\" src=\"\(.*\)\" width.*/<img src=\"\2\"><\/img>\n<br>\n<br>\n\<br>\n/p"

# clean up
rm -f ${momscancer_file}
