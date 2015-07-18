#!/bin/bash

broodhollow_file="broodhollow.tml"

# This script will download the latest dog house diaries, and
# output a formatted version of the comic's image
# in html to the screen

sleep 1

# get latest file from website
wget http://broodhollow.chainsawsuit.com/ -o /dev/null -O ${broodhollow_file}

# make title
echo "<hr><h2>Broodhollow</h2><br><br>"

# get information
cat ${broodhollow_file} | sed -n "s/<div id=.* class=\"comicpane\"><a href=.*><img src=\"\(http:\/\/broodhollow.chainsawsuit.com\/comics.*\.jpg\)\" alt=\"\(.*\)\" title=\"\(.*\)\"\/><\/a><\/div>/<img src=\"\1\"><\/img><br><br>\2<br>\3<br>/p"

# clean up
rm -f ${broodhollow_file}
