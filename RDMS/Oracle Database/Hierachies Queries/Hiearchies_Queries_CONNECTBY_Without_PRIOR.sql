select
  sys_connect_by_path(dummy,'/')
from
 dual
connect by
  level <4;


select
  sys_connect_by_path(ename,'/')
from
 emp
connect by
  level <2;