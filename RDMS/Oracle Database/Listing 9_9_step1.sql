select ename e1 from emp2
connect by prior ename = mname
start with mname = ‘abhay’;
