#!/bin/sh
if [ -f s1.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv s1.csv
fi
if [ -f s2.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv s2.csv
fi
if [ -f s3.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv s3.csv
fi
if [ -f s4.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv s4.csv
fi
if [ -f s5.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv s5.csv
fi
if [ -f s6.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv s6.csv
fi
if [ -f s7.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv s7.csv
fi
if [ -f s8.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv s8.csv
fi
if [ -f s9.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv s9.csv
fi
if [ -f s10.csv ]; then
	echo OK
else
	echo using Default
	cp mx.csv s10.csv
fi
sed -i "s|^|'|" s1.csv
sed -i "s|$|'|" s1.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" s1.csv > s1.tmp
sed '$,$ d' s1.tmp > s1.tm2
rm s1.tmp
cat head.txt s1.tm2 foot.txt > s1.xml.inc
rm s1.tm2
sed -i "s|^|'|" s2.csv
sed -i "s|$|'|" s2.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" s2.csv > s2.tmp
sed '$,$ d' s2.tmp > s2.tm2
rm s2.tmp
cat head.txt s2.tm2 foot.txt > s2.xml.inc
rm s2.tm2
sed -i "s|^|'|" s3.csv
sed -i "s|$|'|" s3.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" s3.csv > s3.tmp
sed '$,$ d' s3.tmp > s3.tm2
rm s3.tmp
cat head.txt s3.tm2 foot.txt > s3.xml.inc
rm s3.tm2
sed -i "s|^|'|" s4.csv
sed -i "s|$|'|" s4.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" s4.csv > s4.tmp
sed '$,$ d' s4.tmp > s4.tm2
rm s4.tmp
cat head.txt s4.tm2 foot.txt > s4.xml.inc
rm s4.tm2
sed -i "s|^|'|" s5.csv
sed -i "s|$|'|" s5.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" s5.csv > s5.tmp
sed '$,$ d' s5.tmp > s5.tm2
rm s5.tmp
cat head.txt s5.tm2 foot.txt > s5.xml.inc
rm s5.tm2
sed -i "s|^|'|" s6.csv
sed -i "s|$|'|" s6.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" s6.csv > s6.tmp
sed '$,$ d' s6.tmp > s6.tm2
rm s6.tmp
cat head.txt s6.tm2 foot.txt > s6.xml.inc
rm s6.tm2
sed -i "s|^|'|" s7.csv
sed -i "s|$|'|" s7.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" s7.csv > s7.tmp
sed '$,$ d' s7.tmp > s7.tm2
rm s7.tmp
cat head.txt s7.tm2 foot.txt > s7.xml.inc
rm s7.tm2
sed -i "s|^|'|" s8.csv
sed -i "s|$|'|" s8.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" s8.csv > s8.tmp
sed '$,$ d' s8.tmp > s8.tm2
rm s8.tmp
cat head.txt s8.tm2 foot.txt > s8.xml.inc
rm s8.tm2
sed -i "s|^|'|" s9.csv
sed -i "s|$|'|" s9.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" s9.csv > s9.tmp
sed '$,$ d' s9.tmp > s9.tm2
rm s9.tmp
cat head.txt s9.tm2 foot.txt > s9.xml.inc
rm s9.tm2
sed -i "s|^|'|" s10.csv
sed -i "s|$|'|" s10.csv
sed "
/^....../ {
i\
[KNKOD] = 
a\
or
}" s10.csv > s10.tmp
sed '$,$ d' s10.tmp > s10.tm2
rm s10.tmp
cat head.txt s10.tm2 foot.txt > s10.xml.inc
rm s10.tm2
