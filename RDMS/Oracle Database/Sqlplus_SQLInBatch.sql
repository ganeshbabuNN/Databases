--save this script in C:\myscripts.sql
DROP TABLE customers;
/

COMMIT
/

CREATE TABLE customers(
custno integer not null,
name varchar2(50) not null,
address varchar2(50),
primary key (custno))
/

insert into customers values(1,'ganesh','M.G Raod, bangalore')
/
insert into customers values(2,'banu','M.G Raod, delhi')
/
insert into customers values(3,'vedha','M.G Raod, USA')
/
insert into customers values(4,'kalayani','M.G Raod, Tamailnadu')
/
insert into customers values(5,'gajenthiran','M.G Raod, andra')

UPDATE customers set address='M.G Raod, USA' where name='USA';
/
CREATE INDEX idxcustomers on customers(name)
/

--Open the sqlplus
START C:\myscripts.sql
/*
myscripts.sql is the file holds all the SQL commands and is available under C:\
*/
