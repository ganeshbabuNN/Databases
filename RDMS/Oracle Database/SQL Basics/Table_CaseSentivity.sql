--creating the table lower case
create table ganesh(empname varchar2(50));
-- create the table UPPER CASE will not work
create table Ganesh(empname varchar2(50));
-- put the double quotes "", this will override-- this will be diff
drop table ganesh;
create table "GANESH"(empname varchar2(50));
--check the table
SELECT table_name from user_tables
where lower(table_name)='%G%' OR lower(table_name)='%g%';
--inserting the values toggle cause
insert into GanesH values('2');
--inserting the values UPPER cause
insert into GANESH values('1');
--view the data
select * from ganesh;
--or
select * from Ganesh;
--or
select * from GANESH;

/*
since the table name is not enclsed within double quotes, 
oracle simply converts the table name specified by the user into UPPER CASE 
and reference the table that is exactly named GANESH
*/