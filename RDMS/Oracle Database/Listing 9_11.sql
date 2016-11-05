select count(‘no_of_emp’),level from emp2 
connect by prior ename = mname
start with ename = ’chairman’
group by level;
