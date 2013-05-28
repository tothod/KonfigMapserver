SELECT 
  planet_osm_line.osm_id
FROM 
  planet_osm_line
WHERE "addr:interpolation"<>'' AND within(way,(SELECT way FROM planet_osm_polygon WHERE planet_osm_polygon.name='Göteborgs kommun'));
