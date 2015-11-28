  select * from Citizen;
  
  --inserting with nested table
  INSERT INTO table(Select citizen.employmentdetails from citizen
  where citizen.citizenno=1)
  values('Technical Author','01-MAR-2010','N',NULL,6500);
