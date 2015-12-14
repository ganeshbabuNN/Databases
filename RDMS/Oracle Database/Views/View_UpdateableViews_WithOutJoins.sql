--create the table
create table customer(
customerno number(10) PRIMARY KEY,
customerName varchar2(50) NOT NULL,
DateOfBirth date,
address varchar2(75),
contactno number(12,2) NOT NULL);

--creating a view on this table
create view vw_customer as
select customerno,customerName,DateOfBirth,contactno from customer;

--query the view
select * from vw_customer;

--now insert the data
insert into vw_customer values(100,'ganesh babu','13-Jun-1983',3232323);

--modify the view
update vw_customer 
set customername='Ganesh baba'
where customername='ganesh babu';

--delete the data
delete from vw_customer
where customername='Ganesh baba';

--drop the object
drop table customer;
drop view vw_customer;


