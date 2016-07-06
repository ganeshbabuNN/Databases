select e.ename from emp_company e where e.salary in
(select max(e1.salary) from emp_company e1
where e1.cname in (select e2.cname from emp_company e2
where e2.ename = 'SUNIL'))
and e.cname in (select e3.cname from emp_company e3
where e3.ename = 'SUNIL')
/	
