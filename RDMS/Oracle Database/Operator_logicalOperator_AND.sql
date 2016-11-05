select employee_id,
       first_name,
       sum(salary) sum_salary
      from employees
group by employee_id,first_name
having sum(salary) >= 20000 AND sum(salary) <50000;  -- both the conditions true only