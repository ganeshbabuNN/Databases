select emp_company.salary,manager.mname
from emp_company,manager
where emp_company.ename = ’SUNIL’
and emp_company.ename = manager.ename;
