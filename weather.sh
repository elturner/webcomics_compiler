#!/bin/bash

# This script will retrieve the weather from the specified url:
uri="http://www.wunderground.com/cgi-bin/findweather/getForecast?query=37.871593,-122.272747"

page_source="weather.html"

# first, get the page source:
wget ${uri} -o /dev/null -O ${page_source}

# Write out title
echo "<hr>"
echo "<h2>Today's Weather</h2>"
echo "<br>"
echo "<br>"

# we're looking for the subsection that begins and ends with:
start_line="<div id=\"conds_dashboard\">"
end_line="<div class=\"titleSubtle\">Tomorrow</div>"

# read through the source, looking for the start line:
found_start=0
found_end=0
while read line
do
	if [ ${found_start} -eq 0 ]
	then
		# check if the current line is the start line
		if [ "${line}" = "${start_line}" ]
		then
			found_start=1
		fi

	elif [ ${found_end} -eq 0 ]
	then
		# check if current line is the end line
		if [ "${line}" = "${end_line}" ]
		then
			found_end=1
		fi
	fi	

	# if we found the start but not the end, print line
	if [ ${found_start} -eq 1 ]
	then
		if [ ${found_end} -eq 0 ]
		then
			echo ${line}
		fi
	fi

done < ${page_source}

# clean up
echo "</div>"
rm -f ${page_source}
