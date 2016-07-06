select ename,salary
from(select ename,salary
from emp_company 
order by salary desc)
where rownum < 4
/
