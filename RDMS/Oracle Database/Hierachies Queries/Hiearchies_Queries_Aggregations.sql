select
 deptno,
 decode(connect_by_is_leaf,0,'LEADER',1,'EMPLOYEE','TOTAL')LEADFUNC,
 COUNT(*),
 SUM(COUNT(*))over(partition by deptno) total_dept
from
  emp
  connect by 
  prior empno=mgr
  start with 
    mgr is null
  group by 
  depno,
  connect_by_is_leaf
  order by
   deptno,
   connect_by_is_leaf;
   
--aggreations within a hiearchy is done using the first ancestor operator CONNECT_BY_ROOT(10g)
select 
  R_ENAME MANAGER,
  Max(ename) KEEP (DENSE_RANK FIRST ORDER BY SAL DESC )BEST_PAID_EMPLOYEE,
  Max(sal) SALARY,
  ROUND(AVG(SAL)) AVERAGE_SAL_EMPLOYEES
FROM
  (
    Select
    connect_by_root ename R_ename,
    ename,
    sal
    from
    emp
    where
    connect_by_is_leaf=1
    and 
    level >1
    connect by
    prior empno=mgr
  )
  group by
  r_ename;