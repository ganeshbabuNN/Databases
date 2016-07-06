select sum(salary)
from emp2 z3 where
z3.ename in(select distinct z1.ename from
(select ename e1,level l1 from emp2
connect by prior ename = mname
start with ename = ’chairman’)z,emp2 z1
where z.l1 = 3 and
z.e1 = z1.ename);
