#!/bin/bash
#

echo "Creating the DB..."
sudo -u postgres createdb -O geonode osm
sudo -u postgres psql -d osm -c 'CREATE EXTENSION postgis;'
sudo -u postgres psql -d osm -c 'CREATE EXTENSION hstore;'
sudo -u postgres psql -d osm -c 'GRANT ALL ON geometry_columns TO PUBLIC;'
sudo -u postgres psql -d osm -c 'GRANT ALL ON spatial_ref_sys TO PUBLIC;'
sudo -u postgres psql -d osm -c 'GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO geonode;'
sudo -u postgres psql -d osm -c 'GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA public TO geonode;'

echo "The database has been created."
