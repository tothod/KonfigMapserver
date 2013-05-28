#!/bin/bash
rm output.osm
rm input.osm
rm sweden-latest.osm
rm malta-latest.osm
rm sweden-latest.osm.bz2
rm malta-latest.osm.bz2
wget http://download.geofabrik.de/europe/sweden-latest.osm.bz2
wget http://download.geofabrik.de/europe/malta-latest.osm.bz2
bzip2 -d sweden-latest.osm.bz2
bzip2 -d malta-latest.osm.bz2
osmconvert malta-latest.osm sweden-latest.osm -o=output.osm
mv output.osm input.osm
sh preprocesscolours.sh
osm2pgsql -S minstil.style -s output.osm
sh createcolours.sh
rm /etc/mapnik-osm-data/colours/*
cp colours/* /etc/mapnik-osm-data/colours/




