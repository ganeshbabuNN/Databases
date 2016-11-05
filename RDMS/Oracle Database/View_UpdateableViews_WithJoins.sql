--create the table
create table customers(
customerno number(10) PRIMARY KEY,
customerName varchar2(50) NOT NULL,
DateOfBirth date,
address varchar2(75),
contactno number(12,2) NOT NULL,
dept_id number(10) references departments ON DELETE CASCADE);

--create a second table
create table departments(
dept_id number(10) PRIMARY KEY,
dept_name varchar2(30)
);

--creating a view on this table of both
create view vw_customerdetails as
select customers.customerno,customers.customerName,customers.DateOfBirth,
customers.contactno,departments.dept_name
from customers,departments
where customers.dept_id=departments.dept_id;

--query the view
select * from vw_customerdetails;

--now insert the data , will get the error
insert into vw_customerdetails values(100,'ganesh babu','13-Jun-1983',3232323,'IT_PROG');
--01776. 00000 -  "cannot modify more than one base table through a join view"

--now insert the data 
insert into departments values(10,'IT_PROG');
insert into customers(customerno,customername,dateOfbirth,contactno,dept_id)values(101,'ganesh babu','13-Jun-1983',3232323,10);

--modify the view
update vw_customerdetails 
set customername='Ganesh baba'
where customername='ganesh babu';

--delete the data
delete from vw_customerdetails
where customername='Ganesh baba';

--drop the object
drop table customers;
drop table departments;
drop view vw_customerdetails;

/*
-if the users tries to perform any of INSERT, UPDATE, DELETE operations, on a view, which is created from a non-updateable view oracle returns the following error message

ORA-1732 : Data manipulation operations not legal on this view.

*/


