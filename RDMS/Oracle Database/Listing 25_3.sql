create type course as
object(coursecode number(2), coursename varchar2(30));
/
create type courselist as varray(10) of course;
/
create table student (sname varchar2 (30), course courselist);
