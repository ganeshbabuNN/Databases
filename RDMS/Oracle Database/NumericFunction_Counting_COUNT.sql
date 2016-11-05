select count(*)  from employees;
--with group by clause
select department_id,count(*) from employees group by department_id;
--with specific column
select department_id,count(first_name) from employees group by department_id;