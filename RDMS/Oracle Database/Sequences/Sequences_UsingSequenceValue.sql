--create
drop table dept;
create table dept (
deptno number(10),
departmentname varchar2(20));

select * from dept;
---add the sequences value
insert into dept(deptno,departmentname)
values(sq_deptno.NEXTVAL,'Accounts');
insert into dept(deptno,departmentname)
values(sq_deptno.NEXTVAL,'Administration');
insert into dept(deptno,departmentname)
values(sq_deptno.NEXTVAL,'sales');
insert into dept(deptno,departmentname)
values(sq_deptno.NEXTVAL,'marketing');
