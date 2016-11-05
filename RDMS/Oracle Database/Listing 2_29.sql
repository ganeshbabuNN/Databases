select employee.ename,emp_company.salary,employee.city
from employee, emp_company where emp_company.ename = employee.ename
and emp_company.cname = ‘TATA’;
