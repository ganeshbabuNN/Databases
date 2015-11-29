--create the table employee
create table employee (
 employee_Id number(10) PRIMARY KEY, --- at column level
 first_name varchar2(25),
 last_name  varchar2(40),
 Date_of_Birth date,
 gender char(1),
 username varchar2(24) ,
 password varchar2(23)
 );  
 
 --testing the constraints with NULL 
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password)
values (100,'ganesh','babu','13-jun-59','M','ganesh123','ganesh123');
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password)
values (100,'ganesh1','babu1','13-jun-59','M','ganesh123','ganesh123');
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password)
values (NULL,'ganesh1','babu1','13-jun-59','M','ganesh123','ganesh123');

--check the data
select * from employee;

--delete the table
drop table employee;