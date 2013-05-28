SELECT 
  gotaddr.adress, 
  gotaddr.primaromrode, 
  gotaddr.sdn
FROM 
  public.gotaddr, 
  public.missingaddr
WHERE 
  gotaddr.adress = missingaddr.missinga
ORDER BY
  gotaddr.adress ASC;
