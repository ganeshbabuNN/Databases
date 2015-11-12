select
  SYS_CONNECT_BY_PATH(ename, '/')
from 
  emp
start with
  mgr is null
connect by
  prior empno=mgr;