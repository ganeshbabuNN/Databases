--create
drop table dept;
create table dept (
deptno varchar2(20),
departmentname varchar2(20));

select * from dept;
delete from dept;
--creating the sequence string with required value
drop sequence sq_deptno;
create sequence sq_deptno
increment by 1 start with 1
minvalue 1 maxvalue 999 CYCLE;
/*
the sequence will only take care of the numeric value in the deptno, the other value
will be generated on the fly and concatenated with the next sequence number whilst inserting the data
in the table using the INSERT INTO statement.
*/
--insert
insert into dept(deptno,departmentname)
values('A'||TO_CHAR(SYSDATE,'DDMMYYYY')|| TO_CHAR(sq_deptno.NextVAL),'Accounts');
insert into dept(deptno,departmentname)
values('A'||TO_CHAR(SYSDATE,'DDMMYYYY')|| TO_CHAR(sq_deptno.NextVAL),'Administration');
insert into dept(deptno,departmentname)
values('A'||TO_CHAR(SYSDATE,'DDMMYYYY')|| TO_CHAR(sq_deptno.NextVAL),'Sales');
insert into dept(deptno,departmentname)
values('A'||TO_CHAR(SYSDATE,'DDMMYYYY')|| TO_CHAR(sq_deptno.NextVAL),'Marketting');



