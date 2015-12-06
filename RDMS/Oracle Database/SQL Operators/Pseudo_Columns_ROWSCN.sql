--creating the table
create table ganesh(
name varchar2(20),
age number(10)
);

insert into ganesh values('ganesh',2);
insert into ganesh values('babu',3);
insert into ganesh values('banu',5);
insert into ganesh values('vedha',3);

--using ROWSCN
select ora_rowscn, name from ganesh;

--using which is last Modified
select scn_to_timestamp(ora_rowscn),name from ganesh;

--insert one record
insert into ganesh values('kalyani',2);

--now check the entry
--dropping the table
drop table ganesh;