create view emp_cmp_emp as
select emp_company.ename,
emp_company.cname,
emp_company.salary,
emp_company.jdate,
employee.city lcity,
company.city ccity
from emp_company, employee, company
where emp_company.ename = employee.ename
and emp_company.cname = company.cname;
