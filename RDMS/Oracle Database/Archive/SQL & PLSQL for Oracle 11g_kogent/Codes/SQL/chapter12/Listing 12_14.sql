select cname,sum(salary),grouping(cname) 
from emp_company 
group by rollup(cname);
