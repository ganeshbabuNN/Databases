select distinct
  Connect_BY_ROOT ename as ANCESTOR,
  ename
from 
  emp
where
  level >1  ---changes the level
connect by
  prior empno=mgr;