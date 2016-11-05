select emp_company.ename,company.cname,company.city
from emp_company,company
where empl_company.cname = company.cname;

