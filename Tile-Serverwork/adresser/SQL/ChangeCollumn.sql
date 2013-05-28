UPDATE public.gotaddr
SET "InlagdiOSM" = false;
UPDATE public.gotaddr
SET "InlagdiOSM" = true
WHERE "adress" IN (SELECT 
  gotaddr.adress 
FROM 
  public.gotaddr, 
  public.allaaddr
WHERE 
  gotaddr.adress = allaaddr.allaaddresser)
