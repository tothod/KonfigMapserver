SELECT 
  gotaddr.adress
FROM 
  public.gotaddr, 
  public.allaaddr
WHERE 
  gotaddr.adress = allaaddr.allaaddresser;
