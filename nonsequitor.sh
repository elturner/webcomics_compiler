#!/bin/bash

nonsequitor_file="nonsequitur.html"

# This script will download the latest nonsequitor, and
# output a formatted version of the comic's image
# in html to the screen

# filename based on today's date
today=`date +%Y/%m/%d`

# get latest file from website
wget http://www.gocomics.com/nonsequitur/${today} -o /dev/null -O ${nonsequitor_file}

# label as Non Sequitor
echo "<hr>"
echo "<h2><a href=\"http://www.gocomics.com/nonsequitur/\">Non Sequitur</a></h2>"
echo "<br>"

# get information
cat ${nonsequitor_file} | sed -n "s/data-image=\"\(.*\)\"/<br><img src=\"\1\"><\/img><br><br>/p"

# clean up
rm -f ${nonsequitor_file}
