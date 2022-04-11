# osm-extracts (WIP)

Extracts OpenStreetMap features from a `.osm.pbf` file to PostGIS tables using [osm2pgsql](https://osm2pgsql.org).

### Initial Setup

1. Create the database
2. Download the [.pbf file](https://wiki.openstreetmap.org/wiki/PBF_Format)
3. Convert the .pbf file in [.osm format](https://wiki.openstreetmap.org/wiki/OSM_XML) via the [o5m data format](https://wiki.openstreetmap.org/wiki/O5m)
4. Import in the DB using osm2pgsql
5. Create the views corresponding to the OSM features

### Updates

1. Download the new pbf file
2. Truncate the planet tables
3. Import again in the DB using osm2pgsql

## Installation

### Ubuntu

`sudo apt install osm2pgsql`

`sudo apt install osmctools`
