#!/bin/bash

jl8_file="jl8.html"

# This script will download the latest girls with slingshots, and
# output a formatted version of the comic's image
# in html to the screen

# get latest file from website
wget limbero.org/jl8 -o /dev/null -O ${jl8_file}

# get information
cat ${jl8_file} | sed -n "s/<img src=\"\(http:\/\/www\.limbero\.org\/jl8\/comics\/.*\.jpeg\)\" alt=\"Comic\">/<hr><a href=\"http:\/\/limbero.org\/jl8\"><h2>JL8<\/h2><\/a><br><br><img src=\"\1\"><\/img><br><br>/p"

# clean up
rm -f ${jl8_file}
