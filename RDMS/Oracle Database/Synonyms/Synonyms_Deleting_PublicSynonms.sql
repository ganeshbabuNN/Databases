--be default privilegs is required by dba
grant DROP public SYNONYM to <UserName>;

--creating
CREATE or replace public SYNONYM employeedetails
FOR employees;

--deleting the public synonym
Drop public synonym employeedetails;