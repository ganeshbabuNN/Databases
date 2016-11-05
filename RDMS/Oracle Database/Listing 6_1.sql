create view V1 as
select ename,cname, salary
from emp_company
where cname = ’ACC’;
