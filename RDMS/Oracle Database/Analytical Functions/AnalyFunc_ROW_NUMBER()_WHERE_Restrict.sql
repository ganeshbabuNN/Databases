select * from (
select e.department_id,
       d.department_name,
       first_name,
       row_number() over(partition by e.department_id order by first_name ASC)Dept_wise_Emp
from employees e,departments d
where e.department_id=d.department_id)
where Dept_wise_Emp > 3