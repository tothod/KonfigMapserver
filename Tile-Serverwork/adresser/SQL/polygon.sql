SELECT DISTINCT
	"addr:street","addr:housenumber"
FROM 
	planet_osm_polygon 
WHERE
	"addr:street" IS NOT null 
AND 
	"addr:housenumber" IS NOT null 
AND 
	within(way,(SELECT way FROM planet_osm_polygon WHERE planet_osm_polygon.name='Göteborgs kommun'))
