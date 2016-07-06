s.cname) max_salary
from emp_company s
order by (select max(salary) from emp_company r where r.cname = s.cname) 
/
@SCALE3
