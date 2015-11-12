select
  sys_connect_by_path(ename,'/')
from
emp
where
  CONNECT_BY_IS_LEAF=1
start with
  mgr is null
connect by
 prior empno=mgr;