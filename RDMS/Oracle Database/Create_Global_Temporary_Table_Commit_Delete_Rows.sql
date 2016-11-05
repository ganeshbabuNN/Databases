CREATE GLOBAL TEMPORARY TABLE Products(
CustomerNo Number(10),
ProductName Varchar2(25),
Discount Number(10),
Qty Number(10),
Price Number(10)) ON COMMIT DELETE ROWS;

-the on commit delete rows clause indicates that the data should be deleted at the end of the transactions


insert into products values(1,'ganesh',23,2,12);
insert into products values(1,'baba',23,2,12);
insert into products values(1,'babu',23,2,12);
insert into products values(1,'gana',23,2,12);
insert into products values(1,'star',23,2,12);
insert into products values(1,'gan',23,2,12);