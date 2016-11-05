create table bankbook(
bookno number(10) PRIMARY KEY,
accountno varchar2(10),
bookdate date,
opbal BINARY_FLOAT,
clbal BINARY_DOUBLE);

insert into bankbook(bookno,accountno,bookdate,opbal,clbal)
values (1,'GB100','03-jan-2008',232.2f,234.3d);
insert into bankbook(bookno,accountno,bookdate,opbal,clbal)
values (3,'GB103','08-jan-2008',433.2f,775.32323432d);

select * from bankbook;

drop table bankbook;