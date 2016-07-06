select salary from emp_company where exists (select ‘X’ from employee
where employee.city = ‘DELHI’ and employee.ename = emp_company.ename);
