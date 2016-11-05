select count(*), d.dname from(select ename e1 from emp2 connect by prior ename = mname
start with mname = ’abhay’)z, dept d
where z.e1 = d.ename group by d.dname;
