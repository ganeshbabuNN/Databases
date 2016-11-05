select ename from employee
where city = 'NAGPUR'
minus 
select ename from emp_company
where cname = 'ACC';
