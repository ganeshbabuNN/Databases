--create the table
create table employee (
 employee_Id number(10) , 
 first_name varchar2(25),
 last_name  varchar2(40),
 Date_of_Birth date,
 gender char(1),
 username varchar2(24) ,
 password varchar2(23),
 PRIMARY KEY (employee_Id)
 );
 
 create table jobhistory(
 job_ID number(10) ,
 job_name varchar2(34),
 Join_date date,
 report_date date,
 employee_Id number(10) , 
 PRIMARY KEY(job_id),
 foreign key(employee_Id) references employee(employee_Id) ON DELETE CASCADE  --- set the CASCADE
 );

 --inserting employee with NULL 
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password)
values (100,'ganesh','babu','13-jun-59','M','ganesh123','ganesh123');
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password)
values (101,'vedha','kumar','12-jan-88','F','vedha123','vedha123');
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password)
values (102,'kalyani','gajenthiran','20-Aug-88','F','kal123','kal123');
insert into employee(employee_id,first_name,last_name,date_of_birth,gender,username,password)
values (103,'gajenthiran','muniratinam','20-sep-88','M','gaja123','gaja123');

--inserting department values
insert into jobhistory(job_ID,job_name,Join_date,report_date,employee_Id) values (1,'IT','03-OCT-13','10-oct-13',100);
insert into jobhistory(job_ID,job_name,Join_date,report_date,employee_Id) values (2,'Sales','03-DEC-13','10-DEC-13',101);
insert into jobhistory(job_ID,job_name,Join_date,report_date,employee_Id) values (3,'Finance','03-JAN-13','10-JAN-13',102);
insert into jobhistory(job_ID,job_name,Join_date,report_date,employee_Id) values (4,'Admin','03-FEB-13','10-FEB-13',103);
insert into jobhistory(job_ID,job_name,Join_date,report_date,employee_Id) values (5,'Admin','03-FEB-13','10-FEB-13',104);


--testing the cascade
DELETE FROM EMPLOYEE 
where employee_id = 100;

--check the data
select * from employee;
select * from jobhistory;

--delete the table
drop table employee;
drop table jobhistory;