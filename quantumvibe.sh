#!/bin/bash

quantumvibe_file="quantumvibe.html"

# This script will download the latest quantumvibe comic, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget quantumvibe.com -o /dev/null -O ${quantumvibe_file}

# write header
echo "<hr>"
echo "<h2><a href=\"http://quantumvibe.com/\">Quantum Vibe</a></h2>"
echo "<br>"
echo "<br>"

# get information
cat ${quantumvibe_file} | sed -n "s/.*<img border=\"0px\" alt=\"\(.*\)\" src=\"\(.*\)\"\/>.*/<img src=\"http:\/\/quantumvibe.com\2\"><\/img><br><br>\1<br><br>/p"

# clean up
rm -f ${quantumvibe_file}
