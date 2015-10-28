drop table customers;
create table customers ( cust_id number(10),cust_name varchar2(20),state_code varchar2(2),times_purchased number(3));

desc customers;

delete customers;

insert into customers values(1,'ganesh','CT',1);
insert into customers values(2,'vs','NY',10);
insert into customers values(3,'ba','NJ',2);
insert into customers values(4,'sha','NZ',4);
insert into customers values(5,'rag','FL',4);
insert into customers values(6,'babw','MO',9);
insert into customers values(1,'ganesh','CT',1);
insert into customers values(3,'ba','NJ',1);
insert into customers values(4,'sha','NZ',1);
commit;

for unpivot data
----------------
1) deploy the table of above customer data and then create the table for this 

create table cust_matrix as
select * from (
   select times_purchased as "Puchase Frequency", state_code
   from customers t
)
pivot 
(
   count(state_code)
   for state_code in ('NY' as "New York",'CT' "Connecticut",'NJ' "New Jersey",'FL' "Florida",'MO' as "Missouri")
)
order by 1;
commit;

For pivotxml subquery
-----------------------

create table preferred_states
(
   state_code varchar2(2)
);
insert into preferred_states values ('FL');
commit;

Drop tables
------------
Drop table customers;
drop table cust_matrix;
drop table preferred_states
commit;

