#!/bin/bash

wonderella_file="wonderella.html"

# This script will download the latest wonderella, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget nonadventures.com -o /dev/null -O ${wonderella_file}

# get information
cat ${wonderella_file} | sed -n "s/.*<img src=\"\(http:\/\/nonadventures\.com\/comics\/.*\.png\)\" title=\"\(.*\)\" alt=\"\(.*\)\" \/>/<hr>\n<h2>Wonderella<\/h2>\n<br>\n<br>\n<img src=\"\1\"><\/img>\n<br>\n<br>\n\2\n<br>\n<br>\n\3\n<br>\n<br>\n/p"

# clean up
rm -f ${wonderella_file}
