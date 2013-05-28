#!/bin/bash
psql -A -t -c "select colour from planet_osm_line where route='running' and colour is not null" -d gis -h 127.0.0.1 -U postgres -o colour.txt
exec<"colour.txt"
while read line
do
	nr=${#line}
	echo ${#line}
	if [ "$nr" == "15" ];then
		r=0
		g=0
		b=0
		red=${line:1:2}
		green=${line:3:2}
		blue=${line:5:2}
		red="0x"$red
		green="0x"$green
		blue="0x"$blue
		let "r = $red"
		let "g = $green"
		let "b = $blue"
		r2=0
		g2=0
		b2=0
		red2=${line:9:2}
		green2=${line:11:2}
		blue2=${line:13:2}
		red2="0x"$red2
		green2="0x"$green2
		blue2="0x"$blue2
		let "r2 = $red2"
		let "g2 = $green2"
		let "b2 = $blue2"
		part1=${line:0:7}
		part2=${line:8:7}
		gmic 000000.png -to_rgb -fc $r,$g,$b -resize 8,2 -o temp1.png	
		gmic 000000.png -to_rgb -fc $r2,$g2,$b2 -resize 8,2 -o temp2.png
		montage temp1.png temp2.png -geometry 7x2-1 test3.png
		gmic test3.png -resize 15,2 -o colours/$part1";"$part2-2.png
		gmic test3.png -resize 15,4 -o colours/$part1";"$part2-4.png
		gmic test3.png -resize 15,6 -o colours/$part1";"$part2-6.png
		gmic test3.png -resize 15,8 -o colours/$part1";"$part2-8.png
		gmic test3.png -resize 15,10 -o colours/$part1";"$part2-10.png
		gmic test3.png -resize 15,12 -o colours/$part1";"$part2-12.png
		gmic test3.png -resize 15,14 -o colours/$part1";"$part2-14.png
		rm test3.png
		rm temp1.png
		rm temp2.png
	else	
		r=0
		g=0
		b=0
		red=${line:1:2}
		green=${line:3:2}
		blue=${line:5:2}
		red="0x"$red
		green="0x"$green
		blue="0x"$blue
		let "r = $red"
		let "g = $green"
		let "b = $blue"
		gmic 000000.png -to_rgb -fc $r,$g,$b -resize 15,2 -o colours/$line-2.png
		gmic 000000.png -to_rgb -fc $r,$g,$b -resize 15,4 -o colours/$line-4.png
		gmic 000000.png -to_rgb -fc $r,$g,$b -resize 15,6 -o colours/$line-6.png
		gmic 000000.png -to_rgb -fc $r,$g,$b -resize 15,8 -o colours/$line-8.png
		gmic 000000.png -to_rgb -fc $r,$g,$b -resize 15,10 -o colours/$line-10.png
		gmic 000000.png -to_rgb -fc $r,$g,$b -resize 15,12 -o colours/$line-12.png
		gmic 000000.png -to_rgb -fc $r,$g,$b -resize 15,14 -o colours/$line-14.png
	fi	
done
rm colour.txt


