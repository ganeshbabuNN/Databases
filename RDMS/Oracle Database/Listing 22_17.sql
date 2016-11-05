create package enqanalysis as 
    cursor E1 return enquiry%rowtype;
end enqanalysis;
/
Create package body enqanalysis as 
     cursor E1 return enquiry%rowtype is
               select * from enquiry;
               end enqanalysis;
/
