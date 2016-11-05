select z3.ename
from emp2 z3 where
z3.ename in(select z1.ename from
(data from step 1)z, emp2 z1
where z.l1 = 3 and
z.e1 = z1.ename);
