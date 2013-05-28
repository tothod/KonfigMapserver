#!/bin/bash
sed -i 's/|/ /' temp.tmp
sed -i -e 's/\(.*\)/\U\1/' temp.tmp
sed -i "s|^|('|" temp.tmp
sed -i "$ ! s|$|'),|" temp.tmp
sed -i "$,$ s|$|');|" temp.tmp
cat header.txt temp.tmp > values.sql
psql -f values.sql -d Addresser -h 127.0.0.1 -U postgres
psql -A -t -f SQL/distinctaddr.sql -d Addresser -h 127.0.0.1 -U postgres -o distinct.tmp
sed -i "s|^|('|" distinct.tmp
sed -i "$ ! s|$|'),|" distinct.tmp
sed -i "$,$ s|$|');|" distinct.tmp
cat header.txt distinct.tmp > values.sql
psql -f values.sql -d Addresser -h 127.0.0.1 -U postgres





