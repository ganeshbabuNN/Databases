create table emp_company2 (en not null,cn,sal) as
select ename,cname,salary from emp_company where cname = ‘ACC’;
