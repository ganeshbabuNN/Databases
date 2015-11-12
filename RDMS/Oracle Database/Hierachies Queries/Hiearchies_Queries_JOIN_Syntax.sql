select
  sys_connect_by_path(emp.ename,'/')P
from emp
join
 dual
 on
 (
    hiredate > date '1981-06-01'
 )
 where
  job='CLERK'
connect by
  prior empno=mgr
start with
  mgr is null;

--Dual table is joined to emp, the on clause is defined before the computing the hiearchy, so the the whole tree will contain only employees hired after jun 1,1981. there where clause returns only the clerks, the path from the president to the clerks exclusively contains new employees.
