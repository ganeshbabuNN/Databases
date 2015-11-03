drop table sales;
create table sales (
location varchar2(100),
product varchar2(100),
Amount number(10));

delete sales;
insert into sales values('Mobile','Cotton',24000);
insert into sales values('Mobile','Lumber',2800);
insert into sales values('Mobile','Plastic',32000);
insert into sales values('Pensacola','Blueberries',9000);
insert into sales values('Pensacola','Cotton',16000);
insert into sales values('Pensacola','Lumber',3500);
commit;

-----

drop table sales1;
create table sales1 (
location varchar2(100),
product varchar2(100),
Amount number(10),
Year number(10));

delete sales1;
insert into sales1 values('Mobile','Cotton',21600,2005);
insert into sales1 values('Mobile','Cotton',2400,2006);
insert into sales1 values('Mobile','Lumber',2520,2005);
insert into sales1 values('Mobile','Lumber',2800,2006);
insert into sales1 values('Mobile','Plastic',28800,2005);
insert into sales1 values('Mobile','Plastic',32000,2006);
insert into sales1 values('Pensacola','Blueberries',7650,2005);
insert into sales1 values('Pensacola','Blueberries',9000,2006);
insert into sales1 values('Pensacola','Cotton',13600,2005);
insert into sales1 values('Pensacola','Cotton',16000,2006);
insert into sales1 values('Pensacola','Lumber',2975,2005);
insert into sales1 values('Pensacola','Lumber',3500,2006);
commit;