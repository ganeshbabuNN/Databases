--creating the table
drop table ganesh;
create table ganesh(
name varchar2(230)
);
--checking
select * from ganesh;

--renaming the table
alter table ganesh RENAME TO newganesh;

--check with old table name
select * from ganesh;

--check with new table name
select * from newganesh;