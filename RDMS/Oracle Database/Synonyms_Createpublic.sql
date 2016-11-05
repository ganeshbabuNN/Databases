--be default privilegs is required
grant CREATE public SYNONYM to <UserName>;

--creating
CREATE public SYNONYM employeedetails
FOR employees;

--check 
select * from employeedetails;