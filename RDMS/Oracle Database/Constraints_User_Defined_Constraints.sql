--create the table
create table employee (
 employee_Id number(10)
 CONSTRAINT pk_employee_ID PRIMARY KEY,  --user defined constraints
 first_name varchar2(25),
 last_name  varchar2(40),
 Date_of_Birth date,
 gender char(1),
 username varchar2(24) ,
 password varchar2(23)
);
 
 create table jobhistory(
 job_ID number(10)
 CONSTRAINTS pk_job_ID PRIMARY KEY,
 job_name varchar2(34),
 Join_date date,
 report_date date,
 employee_Id number(10),
 Constraints pk_job_history_empID FOREIGN KEY(employee_Id)  --user defined constraints
 REFERENCES employee(employee_Id) 
 );

--delete the table
drop table employee;
drop table jobhistory;