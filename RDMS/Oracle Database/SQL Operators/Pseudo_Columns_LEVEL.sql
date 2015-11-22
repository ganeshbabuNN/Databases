--returns 1 for the root node
select level,first_name from employees 
connect by employee_Id=manager_id;

--following the prior
select level,first_name from employees 
where level >2
connect by prior employee_Id=manager_id;