select ename e1, level l1 from emp2 connect by prior ename = mname
start with ename = ’chairman’;

