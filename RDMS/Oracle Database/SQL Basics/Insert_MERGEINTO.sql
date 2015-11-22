drop table productsA;
create table productsA(
productname varchar2(25) not null,
cost number(12,2),
color varchar2(25),
qtyinhand number(5),
manufacture VARCHAR2(25)
);

insert into productsA values('TV',40000,'Black',20,'LG');
insert into productsA values('Refrigerator',25000,'Grey',10,'Godrej');
insert into productsA values('DVD Player',10000,'Silver Gray',25,'Videocon');
insert into productsA values('Microwave',6000,'White',30,'electrolux');
insert into productsA values('juicer',4500,'White',5,'Nova');

drop table productsB;
create table productsB(
productname varchar2(25) not null,
cost number(12,2),
color varchar2(25),
qtyinhand number(5),
manufacture VARCHAR2(25)
);

insert into productsB values('TV',40000,'Black',15,'LG');
insert into productsB values('AC',1100,'White',10,'Voltas');
insert into productsB values('VCD',3000,'Silver',35,'LG');
insert into productsB values('Microwave',6000,'White',15,'electrolux');
insert into productsB values('juicer',4500,'White',30,'Nova');

select * from productsa;
select * from productsb;

--update the quty of the product in the productA table and which are not matches those products to be updated in productA
MERGE INTO productsa A using productsb b
on (a.productname=b.productname)
WHEN matched then
 update set a.qtyinhand=a.qtyinhand +b.qtyinhand
when not matched then
 insert (a.productname,a.cost,a.color,a.qtyinhand,a.manufacture)
 values(b.productname,b.cost,b.color,b.qtyinhand,b.manufacture);
 
--check the table
select * from productsa;