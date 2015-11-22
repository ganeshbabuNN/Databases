/*
In addition to literal values, the following special values can be used with the BINARY_FLOAT and BINARY_DOUBLE data types;
-BINARY_FLOAT_NAN : not a number
-BINARY_FLOAT_INFINITY:Infinity
-BINARY_DOUBLE_NAN: Not a number
-BINARY_DOUBLE_INFINITY: Infinity
*/

create table bankbook(
bookno number(10) PRIMARY KEY,
accountno varchar2(10),
bookdate date,
opbal BINARY_FLOAT,
clbal BINARY_DOUBLE);


insert into bankbook(bookno,accountno,bookdate,opbal,clbal)
values (5,'GB105','03-jan-2008',BINARY_FLOAT_NAN,BINARY_DOUBLE_NAN);
insert into bankbook(bookno,accountno,bookdate,opbal,clbal)
values (6,'GB106','08-jan-2008',BINARY_FLOAT_INFINITY,BINARY_DOUBLE_INFINITY);

select * from bankbook;

drop table bankbook;