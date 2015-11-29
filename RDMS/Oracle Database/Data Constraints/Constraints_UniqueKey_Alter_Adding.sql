--create the table
create table employee (
 employee_Id number(10),
 first_name varchar2(25),
 last_name  varchar2(40),
 Date_of_Birth date,
 gender char(1),
 username varchar2(24) ,
 password varchar2(23)
 );

--adding the constraint name
ALTER TABLE employee
ADD CONSTRAINTS unq_employee_Id UNIQUE(employee_id);

--dropping the table
drop table employee;


