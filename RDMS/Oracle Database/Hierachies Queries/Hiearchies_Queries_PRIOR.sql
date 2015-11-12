select
  empno,
  ename,
  prior empno mgr_empno,---alias
  prior empno mgr_ename ---alias
from emp
where
level =2
connect by
 mgr =prior empno --relation with the mgr
 order by
 empno,ename;