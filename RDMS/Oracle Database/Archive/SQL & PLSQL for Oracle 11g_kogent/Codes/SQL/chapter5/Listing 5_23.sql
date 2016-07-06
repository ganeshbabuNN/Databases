insert into emp_company (ename,salary) select ‘ANIL’,
avg(salary) from emp_company where cname = ‘ACC’;
