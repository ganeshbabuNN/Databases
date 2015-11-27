--returns 1 for the root node
select LEVEL,first_name from employees 
connect by employee_Id=manager_id;

--following the prior
select LEVEL,first_name from employees 
where level >2
connect by prior employee_Id=manager_id;