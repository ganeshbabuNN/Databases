--Sorting more then many columns
select hire_date,salary,first_name,last_name from employees
order by hire_date,last_name DESC;
--with column ASC or other DESC
select hire_date,salary,first_name,last_name from employees
order by hire_date DESC ,salary ASC;