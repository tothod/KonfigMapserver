SELECT
  orter.kommumkod
FROM	
  public.orter
WHERE
  "inlagdiosm"=false AND orter.ortkod LIKE '____'
GROUP BY
  orter.kommumkod
HAVING 
  count(*)=6
ORDER BY
  orter.kommumkod;
