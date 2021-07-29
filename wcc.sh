#!/bin/bash

filename="comics.html"

# Initialze page
echo "<html>" >  ${filename}
echo "<head>" >> ${filename}
echo "<title>Webcomics</title>" >> ${filename}
echo "</head>" >> ${filename}
echo "<body bgcolor=\"#292929\">" >> ${filename}
echo "<font color=\"white\">" >> ${filename}
echo "" >> ${filename}
echo "<a href=\"http://elturner.github.io/videos.html\"><h2>Videos</h2></a>" >> ${filename} 

# get the day of the week
day=`date +"%a"`

# write comics based on day
case $day in
	"Sun")
		echo "Getting Sunday's Comics..."
    echo " - Dilbert..."
		./dilbert.sh        >> ${filename}
    #echo " - Liberty Meadows..."
		#./libertymeadows.sh >> ${filename}
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    echo " - Oglaf..."
		./oglaf.sh          >> ${filename}
		;;
	"Mon")
		echo "Getting Monday's Comics..."
    echo " - Dilbert..."
		./dilbert.sh        >> ${filename}
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    echo " - Sheldon comics..."
    ./sheldoncomics.sh  >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    #echo " - Penny Arcade..."
		#./pa.sh             >> ${filename}
    echo " - PhD Comics..."
		./phd.sh            >> ${filename}
    #echo " - Dangerously Chloe..."
		#./dc.sh             >> ${filename}
    echo " - Girls With Slingshots..."
		./gws.sh            >> ${filename}
    echo " - Questionable Content..."
		./qc.sh             >> ${filename}
		;;
	"Tue")
		echo "Getting Tuesday's Comics..."
    echo " - Dilbert..."
		./dilbert.sh        >> ${filename}
#    echo " - Liberty Meadows..."
#		./libertymeadows.sh >> ${filename}
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    echo " - Sheldon comics..."
    ./sheldoncomics.sh  >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    #echo " - Menage a 3..."
		#./ma3.sh            >> ${filename}
    echo " - Girls With Slingshots..."
		./gws.sh            >> ${filename}
    echo " - Manly Guys Doing Manly Things..."
		./manlyguys.sh      >> ${filename}
    echo " - Strong Female Protagonist..."
		./sfp.sh            >> ${filename}
		echo " - Buttersafe..."
    ./buttersafe.sh     >> ${filename}
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
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    echo " - Sheldon comics..."
    ./sheldoncomics.sh  >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    #echo " - Penny Arcade..."
		#./pa.sh             >> ${filename}
    echo " - PhD Comics..."
		./phd.sh            >> ${filename}
    echo " - Girls With Slingshots..."
		./gws.sh            >> ${filename}
    echo " - Questionable Content..."
		./qc.sh             >> ${filename}
		;;
	"Thu")
		echo "Getting Thursday's Comics..."
    echo " - Dilbert..."
		./dilbert.sh        >> ${filename}
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    echo " - Sheldon comics..."
    ./sheldoncomics.sh  >> ${filename}
    #echo " - Gentleman's Armchair..."
    #./gentlemans_armchair.sh >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    #echo " - Dangerously Chloe..."
		#./dc.sh             >> ${filename}
    #echo " - Menage a 3..."
		#./ma3.sh            >> ${filename}
    echo " - Girls With Slingshots..."
		./gws.sh            >> ${filename}
    echo " - Buttersafe..."
		./buttersafe.sh     >> ${filename}
    echo " - Questionable Content..."
		./qc.sh             >> ${filename}
    echo " - XKCD..."
		./xkcd.sh           >> ${filename}
		;;
	"Fri")
		echo "Getting Friday's Comics..."
    echo " - Dilbert..."
		./dilbert.sh        >> ${filename}
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    echo " - Sheldon comics..."
    ./sheldoncomics.sh  >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    #echo " - Penny Arcade..."
		#./pa.sh             >> ${filename}
    echo " - PhD Comics..."
		./phd.sh            >> ${filename}
    echo " - Drive Comic..."
		./drivecomic.sh     >> ${filename}
    echo " - Girls With Slingshots..."
		./gws.sh            >> ${filename}
    echo " - Strong Female Protagonist..."
		./sfp.sh            >> ${filename}
    echo " - Questionable Content..."
		./qc.sh             >> ${filename}
		;;
	"Sat")
		echo "Getting Saturday's Comics..."
    echo " - Dilbert..."
		./dilbert.sh        >> ${filename}
    echo " - Nonsequitur..."
		./nonsequitor.sh    >> ${filename}
    #echo " - Gentleman's Armchair..."
    #./gentlemans_armchair.sh >> ${filename}
    echo " - SMBC..."
		./smbc.sh           >> ${filename}
    echo " - Wonderella..."
		./wonderella.sh     >> ${filename}
    #echo " - Menage a 3..."
		#./ma3.sh            >> ${filename}
    echo " - XKCD..."
		./xkcd.sh           >> ${filename}
		;;
	*)
		echo "<h1>Er, What day is it?</h1>" >> ${filename}
		;;
esac

# Links for every day.
./weather.sh >> ${filename}

# end page
echo "</font>" >> ${filename}
echo "</body>" >> ${filename}
echo "</html>" >> ${filename}
