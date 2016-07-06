select cname,avg(salary)
from emp_company
group by cname
having avg(salary) > 1500;
