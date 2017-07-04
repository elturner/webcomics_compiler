#!/bin/bash

nonsequitor_file="nonsequitor.html"

# This script will download the latest nonsequitor, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget http://www.gocomics.com/nonsequitur/ -o /dev/null -O ${nonsequitor_file}

# label as Non Sequitor
echo "<hr>"
echo "<h2><a href=\"http://www.gocomics.com/nonsequitur/\">Non Sequitor</a></h2>"
echo "<br>"

# get information
cat ${nonsequitor_file} | sed -n "s/<picture class=.*><img width=.* sizes=.* srcset=.* src=\"\(.*\)\" \/><\/picture>/<br><img src=\"\1\"><\/img><br><br>/p"

# clean up
rm -f ${nonsequitor_file}
