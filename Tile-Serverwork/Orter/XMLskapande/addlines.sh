#!/bin/sh
if [ -f m1.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv m1.csv
fi
if [ -f m2.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv m2.csv
fi
if [ -f m3.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv m3.csv
fi
if [ -f m4.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv m4.csv
fi
if [ -f m5.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv m5.csv
fi
if [ -f m6.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv m6.csv
fi
if [ -f m7.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv m7.csv
fi
if [ -f m8.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv m8.csv
fi
if [ -f m9.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv m9.csv
fi
if [ -f m10.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv m10.csv
fi
sed -i "s|^|'|" m1.csv
sed -i "s|$|'|" m1.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" m1.csv > m1.tmp
sed '$,$ d' m1.tmp > m1.tm2
rm m1.tmp
cat head.txt m1.tm2 foot.txt > m1.xml.inc
rm m1.tm2
sed -i "s|^|'|" m2.csv
sed -i "s|$|'|" m2.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" m2.csv > m2.tmp
sed '$,$ d' m2.tmp > m2.tm2
rm m2.tmp
cat head.txt m2.tm2 foot.txt > m2.xml.inc
rm m2.tm2
sed -i "s|^|'|" m3.csv
sed -i "s|$|'|" m3.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" m3.csv > m3.tmp
sed '$,$ d' m3.tmp > m3.tm2
rm m3.tmp
cat head.txt m3.tm2 foot.txt > m3.xml.inc
rm m3.tm2
sed -i "s|^|'|" m4.csv
sed -i "s|$|'|" m4.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" m4.csv > m4.tmp
sed '$,$ d' m4.tmp > m4.tm2
rm m4.tmp
cat head.txt m4.tm2 foot.txt > m4.xml.inc
rm m4.tm2
sed -i "s|^|'|" m5.csv
sed -i "s|$|'|" m5.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" m5.csv > m5.tmp
sed '$,$ d' m5.tmp > m5.tm2
rm m5.tmp
cat head.txt m5.tm2 foot.txt > m5.xml.inc
rm m5.tm2
sed -i "s|^|'|" m6.csv
sed -i "s|$|'|" m6.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" m6.csv > m6.tmp
sed '$,$ d' m6.tmp > m6.tm2
rm m6.tmp
cat head.txt m6.tm2 foot.txt > m6.xml.inc
rm m6.tm2
sed -i "s|^|'|" m7.csv
sed -i "s|$|'|" m7.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" m7.csv > m7.tmp
sed '$,$ d' m7.tmp > m7.tm2
rm m7.tmp
cat head.txt m7.tm2 foot.txt > m7.xml.inc
rm m7.tm2
sed -i "s|^|'|" m8.csv
sed -i "s|$|'|" m8.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" m8.csv > m8.tmp
sed '$,$ d' m8.tmp > m8.tm2
rm m8.tmp
cat head.txt m8.tm2 foot.txt > m8.xml.inc
rm m8.tm2
sed -i "s|^|'|" m9.csv
sed -i "s|$|'|" m9.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" m9.csv > m9.tmp
sed '$,$ d' m9.tmp > m9.tm2
rm m9.tmp
cat head.txt m9.tm2 foot.txt > m9.xml.inc
rm m9.tm2
sed -i "s|^|'|" m10.csv
sed -i "s|$|'|" m10.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" m10.csv > m10.tmp
sed '$,$ d' m10.tmp > m10.tm2
rm m10.tmp
cat head.txt m10.tm2 foot.txt > m10.xml.inc
rm m10.tm2
