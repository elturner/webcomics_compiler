#!/bin/bash

liberty_file="liberty.html"

# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget http://apesandbabes.com/ -o /dev/null -O ${liberty_file}

# get information
echo "<hr>"
echo "<a href=\"http://apesandbabes.com\"><h2>Liberty Meadows</h2></a>"
echo "<br>"
echo "<br>"

cat ${liberty_file} | sed -n "s/.*<img src=\"\(http:\/\/apesandbabes.com\/comics\/.*\.gif\)\".*/<img src=\"\1\"><\/img>\n<br>\n/p"
cat ${liberty_file} | sed -n "s/.*<img src=\"\(http:\/\/apesandbabes.com\/comics\/.*\.jpg\)\".*/<img src=\"\1\"><\/img>\n<br>\n/p"
cat ${liberty_file} | sed -n "s/.*<img src=\"\(http:\/\/apesandbabes.com\/comics\/.*\.png\)\".*/<img src=\"\1\"><\/img>\n<br>\n/p"

# clean up
rm -f ${liberty_file}
