--creating the table
drop table newganesh;
drop table ganesh;
create table ganesh(
name varchar2(230)
);
--checking
select * from ganesh;

--using RENAME COMMAND
RENAME ganesh TO newganesh;

--check with old table name
select * from ganesh;

--check with new table name
select * from newganesh;


/*
-tables can also be renamed using the Rename command
-it carries out the rename operations atomically. this means that no other thread can access any of the tables while the rename process is running
*/