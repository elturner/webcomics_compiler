#!/bin/bash

pa_file="pa.html"

# This script will download the latest penny arcade, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget penny-arcade.com/comic -o /dev/null -O ${pa_file}

# get information
echo "<hr><h2><a href=\"https://www.penny-arcade.com/comic\">Penny Arade</a></h2><br><br>"
cat ${pa_file} | sed -n "s/.*<img src=\"\(https:\/\/art\.penny-arcade\.com\/Comics\/.*\.jpg\)\" alt=\"\(.*\)\" .*>/<img src=\"\1\"><\/img><br><br>\2/p"
echo "<br><br>"

# clean up
rm -f ${pa_file}
