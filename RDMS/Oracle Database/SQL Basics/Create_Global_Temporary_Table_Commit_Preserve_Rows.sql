CREATE GLOBAL TEMPORARY TABLE Products(
CustomerNo Number(10),
ProductName Varchar2(25),
Discount Number(10),
Qty Number(10),
Price Number(10)) ON COMMIT PRESERVE ROWS;

--the ON COMMIT PRESERVE ROWS clause indicates that rows should be preserved until the end of the session


insert into products values(1,'ganesh',23,2,12);
insert into products values(1,'baba',23,2,12);
insert into products values(1,'babu',23,2,12);
insert into products values(1,'gana',23,2,12);
insert into products values(1,'star',23,2,12);
insert into products values(1,'gan',23,2,12);
commit;