select distinct department_id,max( salary) from employees
group by department_id;