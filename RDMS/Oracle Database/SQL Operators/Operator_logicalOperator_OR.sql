select employee_id,
       first_name
    from employees
where first_name LIKE 'S%' or first_name LIKE 'g%' --either one of the conditions
order by 1;  