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
    echo " - Dilbert..."
		./dilbert.sh        >> ${filename}
    echo " - Liberty Meadows..."
		./libertymeadows.sh >> ${filename}
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    echo " - Oglaf..."
		./oglaf.sh          >> ${filename}
    echo " - Beef Paper..."
		./beefpaper.sh      >> ${filename}
		;;
	"Mon")
		echo "Getting Monday's Comics..."
    echo " - Dilbert..."
		./dilbert.sh        >> ${filename}
    echo " - Liberty Meadows..."
		./libertymeadows.sh >> ${filename}
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    echo " - Penny Arcade..."
		./pa.sh             >> ${filename}
		#./tdhd.sh           >> ${filename}
		./asp.sh            >> ${filename}
    echo " - PhD Comics..."
		./phd.sh            >> ${filename}
		#./broodhollow.sh    >> ${filename}
    echo " - Drive Comic..."
		./drivecomic.sh     >> ${filename}
		./dc.sh             >> ${filename}
		#./momscancer.sh     >> ${filename}
    echo " - Quantum Vibe..."
		./quantumvibe.sh    >> ${filename}
    echo " - Girls With Slingshots..."
		./gws.sh            >> ${filename}
    echo " - Questionable Content..."
		./qc.sh             >> ${filename}
    echo " - Zen Pencils..."
		./zp.sh             >> ${filename}
		;;
	"Tue")
		echo "Getting Tuesday's Comics..."
    echo " - Dilbert..."
		./dilbert.sh        >> ${filename}
    echo " - Liberty Meadows..."
		./libertymeadows.sh >> ${filename}
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    echo " - Johnny Wonder..."
		./jw.sh             >> ${filename}
    echo " - Menage a 3..."
		./ma3.sh            >> ${filename}
    echo " - Girls With Slingshots..."
		./gws.sh            >> ${filename}
    echo " - Manly Guys Doing Manly Things..."
		./manlyguys.sh      >> ${filename}
    echo " - Strong Female Protagonist..."
		./sfp.sh            >> ${filename}
    echo " - Quantum Vibe..."
		./quantumvibe.sh    >> ${filename}
		echo " - Buttersafe..."
    ./buttersafe.sh     >> ${filename}
    echo " - Beef Paper..."
		./beefpaper.sh      >> ${filename}
    echo " - Questionable Content..."
		./qc.sh             >> ${filename}
    echo " - XKCD..."
		./xkcd.sh           >> ${filename}
    echo " - JL8..."
		./jl8.sh            >> ${filename}
		;;
	"Wed")
		echo "Getting Wednesday's Comics..."
    echo " - Dilbert..."
		./dilbert.sh        >> ${filename}
    echo " - Liberty Meadows..."
		./libertymeadows.sh >> ${filename}
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    echo " - Penny Arcade..."
		./pa.sh             >> ${filename}
		./tdhd.sh           >> ${filename}
		./asp.sh            >> ${filename}
    echo " - PhD Comics..."
		./phd.sh            >> ${filename}
		#./broodhollow.sh    >> ${filename}
    echo " - Drive Comic..."
		./drivecomic.sh     >> ${filename}
		#./alicegrove.sh     >> ${filename}
    echo " - Quantum Vibe..."
		./quantumvibe.sh    >> ${filename}
		#./backcomic.sh      >> ${filename}
		./vs.sh             >> ${filename}
    echo " - Girls With Slingshots..."
		./gws.sh            >> ${filename}
    echo " - Questionable Content..."
		./qc.sh             >> ${filename}
    echo " - Zen Pencils..."
		./zp.sh             >> ${filename}
		;;
	"Thu")
		echo "Getting Thursday's Comics..."
    echo " - Dilbert..."
		./dilbert.sh        >> ${filename}
    echo " - Liberty Meadows..."
		./libertymeadows.sh >> ${filename}
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    echo " - Johnny Wonder..."
		./jw.sh             >> ${filename}
		./dc.sh             >> ${filename}
		#./momscancer.sh     >> ${filename}
		#./alicegrove.sh     >> ${filename}
		./quantumvibe.sh    >> ${filename}
    echo " - Menage a 3..."
		./ma3.sh            >> ${filename}
    echo " - Girls With Slingshots..."
		./gws.sh            >> ${filename}
    echo " - Buttersafe..."
		./buttersafe.sh     >> ${filename}
    echo " - Beef Paper..."
		./beefpaper.sh      >> ${filename}
    echo " - Questionable Content..."
		./qc.sh             >> ${filename}
    echo " - XKCD..."
		./xkcd.sh           >> ${filename}
    echo " - JL8..."
		./jl8.sh            >> ${filename}
		;;
	"Fri")
		echo "Getting Friday's Comics..."
    echo " - Dilbert..."
		./dilbert.sh        >> ${filename}
    echo " - Liberty Meadows..."
		./libertymeadows.sh >> ${filename}
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    echo " - Penny Arcade..."
		./pa.sh             >> ${filename}
		./tdhd.sh           >> ${filename}
		./asp.sh            >> ${filename}
    echo " - PhD Comics..."
		./phd.sh            >> ${filename}
		#./broodhollow.sh    >> ${filename}
    echo " - Drive Comic..."
		./drivecomic.sh     >> ${filename}
		./vs.sh             >> ${filename}
		#./alicegrove.sh     >> ${filename}
    echo " - Quantum Vibe..."
		./quantumvibe.sh    >> ${filename}
    echo " - Girls With Slingshots..."
		./gws.sh            >> ${filename}
    echo " - Strong Female Protagonist..."
		./sfp.sh            >> ${filename}
    echo " - Questionable Content..."
		./qc.sh             >> ${filename}
    echo " - Zen Pencils..."
		./zp.sh             >> ${filename}
		;;
	"Sat")
		echo "Getting Saturday's Comics..."
    echo " - Dilbert..."
		./dilbert.sh        >> ${filename}
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    echo " - Wonderella..."
		./wonderella.sh     >> ${filename}
    echo " - Menage a 3..."
		./ma3.sh            >> ${filename}
    echo " - XKCD..."
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
