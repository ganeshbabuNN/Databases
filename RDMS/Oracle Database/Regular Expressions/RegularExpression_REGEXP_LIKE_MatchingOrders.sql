drop table orders;
create table orders(
orderno number(10) NOT NULL,
orderdate   date,
customerno  number(10),
orderamount binary_float,
orderstatus varchar2(20),
ordercode varchar2(20)
);

insert into orders values (1,'03-jan-08',21,69350.0,'Confirmed','MU/0203');
insert into orders values (2,'09-feb-08',22,5750.0,'Void','DL/0203');
insert into orders values (3,'14-OCT-07',21,14750.0,'Confirmed','KL/0203');
insert into orders values (4,'11-NOV-07',23,2840.0,'Void','MD/0203');
insert into orders values (5,'28-feb-07',24,66350.0, 'Confirmed','DL/0303');
insert into orders values (6,'09-dec-08',25,15000.0,'Authorization Failed','KL/0403');
insert into orders values (7,'09-dec-08',25,nan,'Authorization failed','MD/0503');
insert into orders values (8,'08-feb-08',25,Infinity,'Void','MD/0203');

select * from orders;
--those orders begining with MU/0203,DL/0203...
select orderno,ordercode,orderamount,orderstatus from orders
where regexp_like (ordercode,'[MDKLU]/0203');

/*
[MDKLU]-indicate that string may contain combination such as MU,DL or KL or MD.[]
[box] meta character is used to specify a list of characters.
[MDKLU]/ - indicates that the string may contain combinations such as MU or DL or KL or MD
follow by /.
[MDKLU]/0203 - indicates that the string may contain combination such as MU or DL or KL or MD followed by / 
should hold 0203 immediately after the /.
*/

