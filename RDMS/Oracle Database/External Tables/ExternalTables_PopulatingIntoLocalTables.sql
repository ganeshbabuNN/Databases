--creating the table
drop table names;
create table names(
AccountNo number(10),
FirstName varchar2(23),
LastName varchar2(20)
);

--check the exteral tables
select accountno,firstname,lastname from employeemaster;

--inserting frome external tables from db tables
INSERT INTO names(accountno,firstname,lastname)
select accountno,firstname,lastname from employeemaster;

--check the local DB table
select * from names;