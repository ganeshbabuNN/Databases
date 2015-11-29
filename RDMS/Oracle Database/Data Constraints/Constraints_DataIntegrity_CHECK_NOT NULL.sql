--create the table
create table employee (
 employee_Id number(10)
 CONSTRAINT pk_employee_ID PRIMARY KEY,  
 first_name varchar2(25), 
 last_name  varchar2(40),
 Date_of_Birth date,
 gender char(1),
 age number(10) NOT NULL CHECK (age >20),  --- NOT NULL CHECK Constraints
 username varchar2(24) ,
 password varchar2(23)
);
 
 --Testing the NOT NULL Constraints
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,age,username,password)
values (100,'ganesh','babu','13-jun-59','M',33,'ganesh123','ganesh123');
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,age,username,password)
values (101,'vedha','kumar','12-jan-88','F',35,'vedha123','vedha123');
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,age,username,password)
values (102,'kalyani','gajenthiran','20-Aug-88','F',18,'kal123','kal123');
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,age,username,password)
values (103,'gajenthiran','muniratinam','20-sep-88','M',40,'gaja123','gaja123');
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,age,username,password)
values (104,'MIXC','MIXC','23-sep-88','M',45,'MIXC123','MIXC123');

--check the data
select * from employee;

--delete the table
drop table employee;
