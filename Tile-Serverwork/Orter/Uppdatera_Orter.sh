#!/bin/bash
psql -f SQL/Updatetätort.sql -d gis -h 127.0.0.1 -U postgres
rm XMLskapande/*.xml.inc
rm XMLskapande/*.csv
cp XMLskapande/mx.bak XMLskapande/mx.csv
psql -A -t -f SQL/tatorter_1.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/m1.csv
psql -A -t -f SQL/tatorter_2.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/m2.csv
psql -A -t -f SQL/tatorter_3.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/m3.csv
psql -A -t -f SQL/tatorter_4.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/m4.csv
psql -A -t -f SQL/tatorter_5.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/m5.csv
psql -A -t -f SQL/tatorter_6.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/m6.csv
psql -A -t -f SQL/tatorter_7.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/m7.csv
psql -A -t -f SQL/tatorter_8.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/m8.csv
psql -A -t -f SQL/tatorter_9.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/m9.csv
psql -A -t -f SQL/tatorter_10.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/m10.csv
psql -A -t -f SQL/smaorter_1.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/s1.csv
psql -A -t -f SQL/smaorter_2.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/s2.csv
psql -A -t -f SQL/smaorter_3.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/s3.csv
psql -A -t -f SQL/smaorter_4.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/s4.csv
psql -A -t -f SQL/smaorter_5.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/s5.csv
psql -A -t -f SQL/smaorter_6.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/s6.csv
psql -A -t -f SQL/smaorter_7.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/s7.csv
psql -A -t -f SQL/smaorter_8.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/s8.csv
psql -A -t -f SQL/smaorter_9.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/s9.csv
psql -A -t -f SQL/smaorter_10.sql -d gis -h 127.0.0.1 -U postgres -o XMLskapande/s10.csv
cd XMLskapande
find -name '*' -size 0 -delete
sh addlines.sh
sh saddlines.sh
cp *.xml.inc /etc/mapnik-osm-data/orter/
cd ..


