select ename from emp_company 
where salary in (select max(salary) from emp_company);
