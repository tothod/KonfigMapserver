﻿SELECT
  orter.kommumkod
FROM	
  public.orter
WHERE
  "inlagdiosm"=false AND orter.ortkod LIKE 'S____'
GROUP BY
  orter.kommumkod
HAVING 
  count(*)=2
ORDER BY
  orter.kommumkod;
