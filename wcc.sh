#!/bin/bash

filename="comics.html"

# Initialze page
echo "<html>" >  ${filename}
echo "<head>" >> ${filename}
echo "<title>Webcomics</title>" >> ${filename}
echo "</head>" >> ${filename}
echo "<body>" >> ${filename}
echo "" >> ${filename}
echo "<a href=\"http://www.eecs.berkeley.edu/~elturner\"><h2>Home</h2></a>" >> ${filename} 
echo "<a href=\"http://www.eecs.berkeley.edu/~elturner/videos.html\"><h2>Videos</h2></a>" >> ${filename} 

# get the day of the week
day=`date +"%a"`

# news
./bbc.sh >> ${filename}
./cnn.sh >> ${filename}

# write comics based on day
case $day in
	"Sun")
		echo "Getting Sunday's Comics..."
		./dilbert.sh        >> ${filename}
		./libertymeadows.sh >> ${filename}
		./nonsequitor.sh    >> ${filename}
		./smbc.sh           >> ${filename}
		./oglaf.sh          >> ${filename}
		./beefpaper.sh      >> ${filename}
		;;
	"Mon")
		echo "Getting Monday's Comics..."
		./dilbert.sh        >> ${filename}
		./libertymeadows.sh >> ${filename}
		./nonsequitor.sh    >> ${filename}
		./smbc.sh           >> ${filename}
		./pa.sh             >> ${filename}
		./tdhd.sh           >> ${filename}
		./asp.sh            >> ${filename}
		./phd.sh            >> ${filename}
		./broodhollow.sh    >> ${filename}
		./drivecomic.sh     >> ${filename}
		./dc.sh             >> ${filename}
		./momscancer.sh     >> ${filename}
		./quantumvibe.sh    >> ${filename}
		./gws.sh            >> ${filename}
		./qc.sh             >> ${filename}
		./zp.sh             >> ${filename}
		;;
	"Tue")
		echo "Getting Tuesday's Comics..."
		./dilbert.sh        >> ${filename}
		./libertymeadows.sh >> ${filename}
		./nonsequitor.sh    >> ${filename}
		./smbc.sh           >> ${filename}
		./jw.sh             >> ${filename}
		./ma3.sh            >> ${filename}
		./gws.sh            >> ${filename}
		./manlyguys.sh      >> ${filename}
		./sfp.sh            >> ${filename}
		./quantumvibe.sh    >> ${filename}
		./buttersafe.sh     >> ${filename}
		./beefpaper.sh      >> ${filename}
		./qc.sh             >> ${filename}
		./xkcd.sh           >> ${filename}
		./jl8.sh            >> ${filename}
		;;
	"Wed")
		echo "Getting Wednesday's Comics..."
		./dilbert.sh        >> ${filename}
		./libertymeadows.sh >> ${filename}
		./nonsequitor.sh    >> ${filename}
		./smbc.sh           >> ${filename}
		./pa.sh             >> ${filename}
		./tdhd.sh           >> ${filename}
		./asp.sh            >> ${filename}
		./phd.sh            >> ${filename}
		./broodhollow.sh    >> ${filename}
		./drivecomic.sh     >> ${filename}
		./alicegrove.sh     >> ${filename}
		./quantumvibe.sh    >> ${filename}
		./backcomic.sh      >> ${filename}
		./vs.sh             >> ${filename}
		./gws.sh            >> ${filename}
		./qc.sh             >> ${filename}
		./zp.sh             >> ${filename}
		;;
	"Thu")
		echo "Getting Thursday's Comics..."
		./dilbert.sh        >> ${filename}
		./libertymeadows.sh >> ${filename}
		./nonsequitor.sh    >> ${filename}
		./smbc.sh           >> ${filename}
		./jw.sh             >> ${filename}
		./dc.sh             >> ${filename}
		./momscancer.sh     >> ${filename}
		./alicegrove.sh     >> ${filename}
		./quantumvibe.sh    >> ${filename}
		./ma3.sh            >> ${filename}
		./gws.sh            >> ${filename}
		./buttersafe.sh     >> ${filename}
		./beefpaper.sh      >> ${filename}
		./qc.sh             >> ${filename}
		./xkcd.sh           >> ${filename}
		./jl8.sh            >> ${filename}
		;;
	"Fri")
		echo "Getting Friday's Comics..."
		./dilbert.sh        >> ${filename}
		./libertymeadows.sh >> ${filename}
		./nonsequitor.sh    >> ${filename}
		./smbc.sh           >> ${filename}
		./pa.sh             >> ${filename}
		./tdhd.sh           >> ${filename}
		./asp.sh            >> ${filename}
		./phd.sh            >> ${filename}
		./broodhollow.sh    >> ${filename}
		./drivecomic.sh     >> ${filename}
		./vs.sh             >> ${filename}
		./alicegrove.sh     >> ${filename}
		./quantumvibe.sh    >> ${filename}
		./gws.sh            >> ${filename}
		./sfp.sh            >> ${filename}
		./qc.sh             >> ${filename}
		./zp.sh             >> ${filename}
		;;
	"Sat")
		echo "Getting Saturday's Comics..."
		./dilbert.sh        >> ${filename}
		./nonsequitor.sh    >> ${filename}
		./smbc.sh           >> ${filename}
		./wonderella.sh     >> ${filename}
		./ma3.sh            >> ${filename}
		./xkcd.sh           >> ${filename}
		;;
	*)
		echo "<h1>Er, What day is it?</h1>" >> ${filename}
		;;
esac

# always check the weather
./weather.sh >> ${filename}

# end page
echo "</body>" >> ${filename}
echo "</html>" >> ${filename}
