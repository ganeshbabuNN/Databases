with t
as
(
 select 
  'john' employee,
  'jack' manager
 from
  dual
 union all
 select
  'jack' employee,
  'john' manager
  from
  dual
)
select
  sys_connect_by_path(employee,'/') as employee,
  manager,
  connect_by_iscycle
from T
connect by nocycle
 prior employee=manager;