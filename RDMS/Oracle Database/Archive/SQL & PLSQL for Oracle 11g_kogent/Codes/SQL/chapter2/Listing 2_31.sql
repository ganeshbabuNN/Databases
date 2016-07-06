select employee.ename
from employee,emp_company,company
where employee.ename = emp_company.ename
and emp_company.cname = company.cname 
and employee.city = company.city;
