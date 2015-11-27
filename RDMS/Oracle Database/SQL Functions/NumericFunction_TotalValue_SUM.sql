select distinct department_id,sum( salary) from employees
group by department_id;