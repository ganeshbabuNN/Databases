select e.cname,avg(e.salary)
from emp_company e
group by cname
having avg(e.salary) >= all(select avg(c.salary)
from emp_company c
group by c.cname);
