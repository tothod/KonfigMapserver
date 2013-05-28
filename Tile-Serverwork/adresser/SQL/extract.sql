SELECT 
  gotaddr.adress, 
  gotaddr.primaromrode, 
  gotaddr.sdn
FROM 
  public.gotaddr, 
  public.allaaddr
WHERE 
  gotaddr.adress = allaaddr.allaaddresser;
