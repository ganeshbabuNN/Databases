select distinct department_id,min(distinct salary) from employees
group by department_id;