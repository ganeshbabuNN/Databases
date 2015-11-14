select e.employee_id AS "Employee Code",
       e.first_name || ' '|| e.last_name as "Employee",
       M.employee_id  AS "Manager Code",
       m.first_name || ' '|| m.last_name as "Reports to"
from employees E,employees M    --- same table
where e.manager_id=m.employee_id
order by 1;
