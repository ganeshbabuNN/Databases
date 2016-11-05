--privilages if required
grant DROP public SYNONYM to <UserName>;

--creating
CREATE or replace public SYNONYM employeedetails
FOR employees;

--droping the public synonym on done by DBA
Drop public synonym employeedetails;