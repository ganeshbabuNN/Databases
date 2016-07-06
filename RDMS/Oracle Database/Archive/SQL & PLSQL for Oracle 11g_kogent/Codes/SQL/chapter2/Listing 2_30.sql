select emp_company.ename
from emp_company, company where emp_company.cname = company.cname
and company.city = ’DELHI’;
