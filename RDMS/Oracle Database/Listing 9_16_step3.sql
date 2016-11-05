select count('no_of_emp'), sum(z3.s1) from
(select ename e1,salary s1, level l1 from emp2 connect by prior 
ename = mname start with ename = 'chairman')z3, (select z2.l1 l1 from
(select distinct level l1 from emp2 connect by prior ename = mname
start with ename = 'chairman' )z1,
(select distinct level l1 from emp2 connect by prior ename = mname
start with ename = 'chairman')z2
where z2.l1 >= z1.l1
group by z2.l1 having count(*) = 2)z4
where z3.l1 = z4.l1;
