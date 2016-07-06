create view v4 as
select emp_company.ename, emp_company.salary, employee.city
from emp_company, employee where emp_company.ename= employee.ename;
