select cname,avg(salary)
from emp_company
where cname != ‘ACC’
group by cname; 
