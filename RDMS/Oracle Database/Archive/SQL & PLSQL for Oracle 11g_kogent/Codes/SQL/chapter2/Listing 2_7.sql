(select ename from employee
where city='NAGPUR'
intersect
select ename from emp_company 
where cname='ACC')
minus
select ename from emp_shift
where shift='A';
