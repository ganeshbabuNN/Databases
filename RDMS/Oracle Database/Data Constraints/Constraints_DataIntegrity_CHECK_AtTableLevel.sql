--create the table
create table employee (
 employee_Id number(10)
 CONSTRAINT pk_employee_ID PRIMARY KEY,  
 first_name varchar2(25), 
 last_name  varchar2(40),
 Date_of_Birth date NOT NULL,
 gender char(1),
 username varchar2(24) ,
 password varchar2(23),
 CONSTRAINT chk_first_name CHECK (first_name LIKE 'g%' or first_name LIKE 'v%' ), --check constraints
 CONSTRAINT chk_employee_id CHECK (employee_Id >= 100)    --check constraints
);
 
 --Testing the NOT NULL Constraints
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password)
values (100,'ganesh','babu','13-jun-59','M','ganesh123','ganesh123');
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password)
values (101,'vedha','kumar','12-jan-88','F','vedha123','vedha123');
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password)
values (102,'kalyani','gajenthiran','20-Aug-88','F','kal123','kal123');
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password)
values (103,'gajenthiran','muniratinam','20-sep-88','M','gaja123','gaja123');
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password)
values (11,'MIXC','MIXC','23-sep-88','M','MIXC123','MIXC123');

--check the data
select * from employee;

--delete the table
drop table employee;
