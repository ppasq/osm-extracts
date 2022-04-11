#!/bin/bash
#

echo "Download the daily update"
wget https://osmit-estratti.wmcloud.org/dati/poly/regioni/pbf/01_Piemonte_poly.osm.pbf

# Convert PBF
osmconvert 01_Piemonte_poly.osm.pbf -o=piemonte.o5m
osmfilter piemonte.o5m >piemonte.osm

# Import data in PostGIS
sudo su postgres
osm2pgsql -d osm -c piemonte.osm --hstore

echo "Done."
