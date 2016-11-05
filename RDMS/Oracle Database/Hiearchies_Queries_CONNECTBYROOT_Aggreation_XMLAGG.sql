select
  ancestor,
  count(nullif(ename,ancestor)) count,
  xmlAgg(decode(ename,ancestor,null,XMLELEMENT(ename,ename)))
  EMPLOYEES
from
( select
  connect_By_root ename as ancestor,
  ename
  from
  emp
  connect by
   prior empno=mgr
   )
   group by
    ancestor
    order by ancestor;