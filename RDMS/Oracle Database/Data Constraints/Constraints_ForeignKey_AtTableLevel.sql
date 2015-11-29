--create the table
create table employee (
 employee_Id number(10) , 
 first_name varchar2(25),
 last_name  varchar2(40),
 Date_of_Birth date,
 gender char(1),
 username varchar2(24) ,
 password varchar2(23),
 mangerno NUMBER(10), 
 deptno number(10),
 PRIMARY KEY (employee_Id,username),
 FOREIGN KEY(deptno) REFERENCES departments(deptno)
 );
 
 create table departments(
 deptno number(10) PRIMARY KEY,
 departmet_name varchar2(40)
 );
 
 --testing the constraints with NULL 
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password,mangerno,deptno)
values (100,'ganesh','babu','13-jun-59','M','ganesh123','ganesh123',null,10);
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password,mangerno,deptno)
values (102,'vedha','kumar','12-jan-88','F','vedha123','vedha123',100,10);
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password,mangerno,deptno)
values (103,'kalyani','gajenthiran','20-Aug-88','F','kal123','kal123',100,20);
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password,mangerno,deptno)
values (104,'gajenthiran','muniratinam','20-sep-88','M','gaja123','gaja123',100,10);

--for department
insert into departments(deptno,departmet_name)values (10,'Admin');
insert into departments(deptno,departmet_name) values(20,'Sales');

--check the data
select * from employee;
select * from departments;

--delete the table
drop table employee;
drop table departments;