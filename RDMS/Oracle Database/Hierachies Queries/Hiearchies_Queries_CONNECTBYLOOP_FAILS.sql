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
  employee,
  manager
from T
connect by 
 prior employee=manager;

--there is a loop in the user data because john is both the manager and the empoloyee of jack.
--use NOCYCLE , which will not generate errors.