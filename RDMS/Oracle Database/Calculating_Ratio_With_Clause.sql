with
anilsal as (select salary s1 from emp_company where ename='anil'),
sunilsal as (select salary s2 from emp_company where ename='sunil')
select t1.s1,t2.s2,t1.s1/t2.s2
from anilsal t1,sunilsal t2
/
