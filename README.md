# osm-extracts (WIP)

Extracts OpenStreetMap features from a `.osm.pbf` file to PostGIS tables using [osm2pgsql](https://osm2pgsql.org).

### Initial Setup

1. Create the database
2. Download the .pbf file
3. Convert the .pbf file in .osm format
4. Import in the DB using osm2pgsql
5. Create the views corresponding to the OSM features

### Updates

1. Download the new pbf file
2. Truncate the planet tables
3. Import in the DB using osm2pgsql

## Installation

### Ubuntu

`sudo apt install osm2pgsql`

`sudo apt install osmctools`
