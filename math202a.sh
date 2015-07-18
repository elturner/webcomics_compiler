#!/bin/bash

math202a_file="math202a.html"

# This script will download the latest girls with slingshots, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget www.cs.berkeley.edu/~oholtz/202A/ -o /dev/null -O ${math202a_file}

# get information
echo "<hr>"
echo "<a href=\"http://www.cs.berkeley.edu/~oholtz/202A/\"><h2>Math 202A</h2></a>"
echo "<br>"
echo "<br>"

echo "<ul>"
cat ${math202a_file} | sed -n "s/\(.*Homework assignment.*\)/\1/p"
echo "</ul>"

# clean up
rm -f ${math202a_file}
