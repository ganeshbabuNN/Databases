create table  emphistory (empname, empid, emppicture, empinfo)
as
Select empname, empid, emppicture, empinfo
from employee
where empid = '101'
/

