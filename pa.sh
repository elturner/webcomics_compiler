#!/bin/bash

pa_file="pa.html"

# This script will download the latest penny arcade, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget penny-arcade.com/comic -o /dev/null -O ${pa_file}

# get information
cat ${pa_file} | sed -n "s/.*<img src=\"\(http:\/\/art\.penny-arcade\.com\/photos\/.*\.jpg\)\" alt=\"\(.*\)\" \/>/<hr><h2>Penny Arcade<\/h2><br><br><img src=\"\1\"><\/img><br><br>\2<br><br>/p"

# clean up
rm -f ${pa_file}
