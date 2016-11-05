select ename,salary
from (select ename,nvl(salary,0) salary
from emp_company
order by salary desc)
where rownum < 4
/
