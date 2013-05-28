UPDATE public.orter
SET "inlagdiosm" = false;
UPDATE public.orter
SET "inlagdiosm" = true
WHERE "ortkod" IN (SELECT 
  orter.ortkod 
FROM 
  public.orter, 
  public.planet_osm_point
WHERE 
  public.orter.ortkod = public.planet_osm_point."ref:se:scb");
UPDATE public.orter
SET "inlagdiosm" = true
WHERE "ortkod" IN (SELECT 
  orter.ortkod 
FROM 
  public.orter, 
  public.planet_osm_polygon
WHERE 
  public.orter.ortkod = public.planet_osm_polygon."ref:se:scb");
