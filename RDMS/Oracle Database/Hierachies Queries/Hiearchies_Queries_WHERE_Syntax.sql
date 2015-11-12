--the below condition is not a join; therefore,the hiearchy is built with all rows.Later ,the condition is applied to the childern
select
  sys_connect_by_path(emp.ename,'/')P
from emp
where
  emp.deptno in (20,30)
connect by
  prior empno=mgr
start with
  mgr is null;
  
--other way the same query again apears with a subquery, this time the hiearchy is built with all rows in the subquery and the conditions applies to the main query

select
P
from
(
select
  sys_connect_by_path(emp.ename,'/')P,
  deptno
from emp
connect by
  prior empno=mgr
start with
  mgr is null
)
where
  deptno in (20,30);