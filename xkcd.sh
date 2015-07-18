#!/bin/bash

xkcd_file="xkcd.html"

# This script will download the latest xkcd, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget xkcd.com -o /dev/null -O ${xkcd_file}

# label as XKCD
echo "<hr>"
echo "<h2><a href=\"http://xkcd.com/\">XKCD</a></h2>"
echo "<br>"

# get title
cat ${xkcd_file} | sed -n "s/<div id=\"ctitle\">\(.*\)<\/div>/<br>\n<h3>\1<\/h3><br>\n/p"

# get information
cat ${xkcd_file} | sed -n "s/<img src=\"\(http:\/\/imgs\.xkcd\.com\/comics\/.*\.png\)\" title=\"\(.*\)\" alt=\".*\" \/>/<br>\n<img src=\"\1\"><\/img>\n<br>\n<br>\n\2\n<br>\n<br>\n/p"
cat ${xkcd_file} | sed -n "s/<img src=\"\(http:\/\/imgs\.xkcd\.com\/comics\/.*\.gif\)\" title=\"\(.*\)\" alt=\".*\" \/>/<br>\n<img src=\"\1\"><\/img>\n<br>\n<br>\n\2\n<br>\n<br>\n/p"
cat ${xkcd_file} | sed -n "s/<img src=\"\(\/\/imgs.xkcd.com\/comics\/.*\.png\)\" title=\"\(.*\)\" alt=\"\(.*\)\" \/>/<br>\n<img src=\"http:\1\"><\/img>\n<br>\n<br>\n\2\n<br>\n<br>\n\3\n<br>\n/p"
cat ${xkcd_file} | sed -n "s/<img src=\"\(\/\/imgs.xkcd.com\/comics\/.*\.gif\)\" title=\"\(.*\)\" alt=\"\(.*\)\" \/>/<br>\n<img src=\"http:\1\"><\/img>\n<br>\n<br>\n\2\n<br>\n<br>\n\3\n<br>\n/p"

# add a link
echo "<a href=\"http://www.explainxkcd.com/wiki/index.php?title=Main_Page\">Explain XKCD</a>"
echo "<br>"

# clean up
rm -f ${xkcd_file}
