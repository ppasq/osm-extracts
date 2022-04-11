# Create Schema
CREATE SCHEMA geonode AUTHORIZATION geonode;

# Aerialway
CREATE VIEW geonode.piemonte_aerialway_line AS SELECT osm_id, name, aerialway, ref, way FROM planet_osm_line WHERE aerialway in ('cable_car', 'gondola', 'mixed_lift', 'chair_lift', 'drag_lift', 't-bar', 'j-bar', 'platter', 'rope_tow', 'magic_carpet', 'zip_line', 'goods', 'pylon', 'station');
ALTER VIEW geonode.piemonte_aerialway_line OWNER TO ithaca;

# Aeroway
CREATE VIEW geonode.piemonte_aeroway_polygon AS SELECT osm_id, name, aeroway, ref, way FROM planet_osm_polygon WHERE aeroway in ('aerodrome', 'apron', 'hangar', 'helipad', 'heliport', 'spaceport', 'terminal');
CREATE VIEW geonode.piemonte_aeroway_point AS SELECT osm_id, name, aeroway, ref, way FROM planet_osm_point WHERE aeroway in ('aerodrome', 'gate', 'helipad', 'heliport', 'navigationaid', 'spaceport', 'terminal', 'windsock');
ALTER VIEW geonode.piemonte_aeroway_polygon OWNER TO ithaca;
ALTER VIEW geonode.piemonte_aeroway_point OWNER TO ithaca;

#Amenity
CREATE VIEW geonode.piemonte_amenity_sustenance_point AS SELECT osm_id, name, amenity, ref, way FROM planet_osm_point WHERE amenity in ('bar', 'biergarten', 'cafe', 'fast_food', 'food_court', 'ice_cream', 'pub', 'restaurant');
CREATE VIEW geonode.piemonte_amenity_education_point AS SELECT osm_id, name, amenity, ref, way FROM planet_osm_point WHERE amenity in ('college', 'driving_school', 'kindergarten', 'language_school', 'library', 'toy_library', 'music_school', 'university');
CREATE VIEW geonode.piemonte_amenity_transportation_point AS SELECT osm_id, name, amenity, ref, way FROM planet_osm_point WHERE amenity in ('bicycle_parking', 'bicycle_repair_station', 'bicycle_rental', 'boat_rental', 'boat_sharing', 'bus_station', 'car_rental', 'car_sharing', 'car_wash', 'vehicle_inspection', 'charging_station', 'ferry_terminal', 'fuel', 'grit_bin', 'motorcycle_parking', 'parking', 'parking_entrance', 'parking_space', 'taxi');
CREATE VIEW geonode.piemonte_amenity_financial_point AS SELECT osm_id, name, amenity, ref, way FROM planet_osm_point WHERE amenity in ('atm', 'bank', 'bureau_de_change');
CREATE VIEW geonode.piemonte_amenity_healthcare_point AS SELECT osm_id, name, amenity, ref, way FROM planet_osm_point WHERE amenity in ('baby_hatch', 'clinic', 'dentist', 'doctors', 'hospital', 'nursing_home', 'pharmacy', 'social_facility', 'veterinary');
CREATE VIEW geonode.piemonte_amenity_entertainment_point AS SELECT osm_id, name, amenity, ref, way FROM planet_osm_point WHERE amenity in ('arts_centre','brothel','casino','cinema','community_centre','conference_centre','events_venue','fountain','gambling','love_hotel','nightclub','planetarium','public_bookcase','social_centre','stripclub','studio','swingerclub','theatre');
CREATE VIEW geonode.piemonte_amenity_public_service_point AS SELECT osm_id, name, amenity, ref, way FROM planet_osm_point WHERE amenity in ('courthouse','fire_station','police','post_box','post_depot','post_office','prison','ranger_station','townhall');
CREATE VIEW geonode.piemonte_amenity_facilities_point AS SELECT osm_id, name, amenity, ref, way FROM planet_osm_point WHERE amenity in ('bbq','bench','dog_toilet','drinking_water','give_box','parcel_locker','shelter','shower','telephone','toilets','water_point','watering_place');
CREATE VIEW geonode.piemonte_amenity_waste_management_point AS SELECT osm_id, name, amenity, ref, way FROM planet_osm_point WHERE amenity in ('sanitary_dump_station','recycling','waste_basket','waste_disposal','waste_transfer_station');
CREATE VIEW geonode.piemonte_amenity_others_point AS SELECT osm_id, name, amenity, ref, way FROM planet_osm_point WHERE amenity in ('animal_boarding','animal_breeding','animal_shelter','baking_oven','childcare','clock','crematorium','dive_centre','funeral_hall','grave_yard','hunting_stand','internet_cafe','kitchen','kneipp_water_cure','lounger','marketplace','monastery','photo_booth','place_of_mourning','place_of_worship','public_bath','refugee_site','vending_machine');
ALTER VIEW geonode.piemonte_amenity_sustenance_point OWNER TO ithaca;
ALTER VIEW geonode.piemonte_amenity_education_point OWNER TO ithaca;
ALTER VIEW geonode.piemonte_amenity_transportation_point OWNER TO ithaca;
ALTER VIEW geonode.piemonte_amenity_financial_point OWNER TO ithaca;
ALTER VIEW geonode.piemonte_amenity_healthcare_point OWNER TO ithaca;
ALTER VIEW geonode.piemonte_amenity_entertainment_point OWNER TO ithaca;
ALTER VIEW geonode.piemonte_amenity_public_service_point OWNER TO ithaca;
ALTER VIEW geonode.piemonte_amenity_facilities_point OWNER TO ithaca;
ALTER VIEW geonode.piemonte_amenity_waste_management_point OWNER TO ithaca;
ALTER VIEW geonode.piemonte_amenity_others_point OWNER TO ithaca;

#Barriers
CREATE VIEW geonode.piemonte_barrier_line AS SELECT osm_id, name, barrier, ref, way FROM planet_osm_line WHERE barrier in ('cable_barrier', 'city_wall', 'ditch', 'fence', 'guard_rail', 'hand_rail', 'hedge', 'kerb', 'retaining_wall', 'wall');
ALTER VIEW geonode.piemonte_barrier_line OWNER TO ithaca;

#Boundary
CREATE VIEW geonode.piemonte_administrative_boundary_polygon AS SELECT osm_id, name, boundary, admin_level, way FROM planet_osm_polygon WHERE boundary = 'administrative';
ALTER VIEW geonode.piemonte_administrative_boundary_polygon OWNER TO ithaca;
CREATE VIEW geonode.piemonte_park_boundary_polygon AS SELECT osm_id, name, boundary, way FROM planet_osm_polygon WHERE boundary in ('national_park', 'protected_area');
ALTER VIEW geonode.piemonte_park_boundary_polygon OWNER TO ithaca;

#Building
CREATE VIEW geonode.piemonte_building_polygon AS SELECT osm_id, name, building, "addr:housename", "addr:housenumber", "addr:interpolation", way FROM planet_osm_polygon WHERE building IS NOT NULL;
ALTER VIEW geonode.piemonte_building_polygon OWNER TO ithaca;

#Craft
CREATE VIEW geonode.piemonte_craft_polygon AS SELECT osm_id, name, craft, way FROM planet_osm_polygon WHERE craft IS NOT NULL;
ALTER VIEW geonode.piemonte_craft_polygon OWNER TO ithaca;

#Emergency
CREATE VIEW geonode.piemonte_emergency_point AS SELECT osm_id, name, emergency, way FROM planet_osm_point WHERE emergency IS NOT NULL;
ALTER VIEW geonode.piemonte_emergency_point OWNER TO ithaca;

#Geological

#Healthcare

#Highway
CREATE VIEW geonode.piemonte_highway_line AS SELECT osm_id, name, ref, bridge, tunnel, way FROM planet_osm_roads WHERE highway IS NOT NULL;
ALTER VIEW geonode.piemonte_highway_line OWNER TO ithaca;

#Historic

#Landuse

#Man_made

#Military

#Natural

#Office

#Place

#Power

#Public Transport

#Railway
CREATE VIEW geonode.piemonte_railway_line AS SELECT osm_id, name, railway, bridge, cutting, embarkment, service, tunnel, way FROM planet_osm_line WHERE railway in ('abandoned', 'construction','disused','funicular','light_rail','miniature','monorail','narrow_gauge','preserved','rail','subway','tram');
ALTER VIEW geonode.piemonte_railway_line OWNER TO ithaca;
CREATE VIEW geonode.piemonte_railway_point AS SELECT osm_id, name, railway, way FROM planet_osm_point WHERE railway in ('halt', 'stop_position', 'station', 'subway_entrance', 'tram_stop');
ALTER VIEW geonode.piemonte_railway_point OWNER TO ithaca;
#Route

#Shop

#Sport

#Telecom

#Tourism

#Water
CREATE VIEW geonode.piemonte_water_polygon AS SELECT osm_id, name, "natural", water, way FROM planet_osm_polygon WHERE water in ('river', 'oxbow', 'canal', 'ditch', 'lock', 'fish_pass', 'lake', 'reservoir', 'pond', 'basin', 'lagoon', 'stream_pool', 'reflecting_pool', 'moat', 'watewater');
ALTER VIEW geonode.piemonte_water_polygon OWNER TO ithaca;

#Waterway
CREATE VIEW geonode.piemonte_waterway_line AS SELECT osm_id, name, waterway, way FROM planet_osm_line WHERE waterway in ('river', 'riverbank', 'stream', 'tidal_channel', 'canal', 'drain', 'ditch', 'pressurised', 'fairway', 'dam', 'weir', 'waterfall', 'lock_gate');
ALTER VIEW geonode.piemonte_waterway_line OWNER TO ithaca;
