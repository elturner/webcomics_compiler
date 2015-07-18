#!/bin/bash

wonderella_file="wonderella.html"

# This script will download the latest wonderella, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget nonadventures.com -o /dev/null -O ${wonderella_file}

# get information
cat ${wonderella_file} | sed -n "s/.*<img src=\"\(http:\/\/nonadventures\.com\/comics\/.*\.png\)\" title=\"\(.*\)\" alt=\"\(.*\)\" \/>/<hr><h2>Wonderella<\/h2><br><br><img src=\"\1\"><\/img><br><br>\2<br><br>\3<br><br>/p"

# clean up
rm -f ${wonderella_file}
