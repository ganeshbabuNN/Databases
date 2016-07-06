select e1.ename from emp2 e1
where	not exists
(select distinct e2.mname from emp2 e2 where e2.mname = e1.ename);
