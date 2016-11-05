--Ascending by Default
select first_name,last_name,hire_date,salary from employees
order by first_name;
--Ascending put a keyword
select first_name,last_name,hire_date,salary from employees
order by first_name ASC;
--Descending 
select employee_id,first_name,last_name,hire_date,salary from employees
order by employee_id DESC;