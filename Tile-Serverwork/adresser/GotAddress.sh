#!/bin/bash
psql -A -t -f SQL/polygon.sql -d gis -h 127.0.0.1 -U postgres -o polygon.txt
psql -A -t -f SQL/point.sql -d gis -h 127.0.0.1 -U postgres -o point.txt
cat polygon.txt point.txt interpoladdr.csv > temp.tmp
rm polygon.txt
rm point.txt
sed -i 's/|/ /' temp.tmp
sed -i -e 's/\(.*\)/\U\1/' temp.tmp
sed -i "s|^|('|" temp.tmp
sed -i "$ ! s|$|'),|" temp.tmp
sed -i "$,$ s|$|');|" temp.tmp
cat header.txt temp.tmp > values.sql
rm temp.tmp
psql -f SQL/tablealla.sql -d Addresser -h 127.0.0.1 -U postgres
psql -f values.sql -d Addresser -h 127.0.0.1 -U postgres
rm values.sql
psql -A -t -f SQL/distinctaddr.sql -d Addresser -h 127.0.0.1 -U postgres -o distinct.tmp
sed -i "s|^|('|" distinct.tmp
sed -i "$ ! s|$|'),|" distinct.tmp
sed -i "$,$ s|$|');|" distinct.tmp
cat header.txt distinct.tmp > values.sql
rm distinct.tmp
psql -f SQL/tablealla.sql -d Addresser -h 127.0.0.1 -U postgres
psql -f values.sql -d Addresser -h 127.0.0.1 -U postgres
rm values.sql
psql -f SQL/ChangeCollumn.sql -d Addresser -h 127.0.0.1 -U postgres
vecka="$(date +"%Y%W")"
veckaunder=`expr $vecka - 1`
sed s/"Values('"$veckaunder"',"/"Values('"$vecka"',"/ SQL/Veckoavlasning.sql > SQL/test.sql
rm SQL/Veckoavlasning.sql
mv SQL/test.sql SQL/Veckoavlasning.sql
psql -f SQL/Veckoavlasning.sql -d Addresser -h 127.0.0.1 -U postgres




