select z1.ename from
(select ename e1, level l1 from emp2
connect by prior ename = mname
start with ename = íchairmaní)z, emp2 z1
where z.l1 = 3 and
z.e1 = z1.ename;
