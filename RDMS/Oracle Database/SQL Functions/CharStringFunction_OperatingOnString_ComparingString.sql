select first_name,last_name,hire_date from employees
where UPPER(first_name) LIKE 'ST%';
select first_name,last_name,hire_date from employees
where UPPER(first_name) LIKE UPPER('%h');
select first_name,last_name,hire_date from employees
where UPPER(first_name) LIKE UPPER('%a%');