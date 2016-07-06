create table emp2(ename varchar2(10), mname varchar2(10), salary number, rating number);
insert into emp2 values(‘&ename’, ’&mname’, &salary, &rating);
