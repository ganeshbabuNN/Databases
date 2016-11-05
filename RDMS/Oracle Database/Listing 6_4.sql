create view V2 
as select ename, salary
from emp_company
where cname = ‘ACC’
with CHECK OPTION;
