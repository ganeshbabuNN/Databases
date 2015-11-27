desc employees;

insert into employees(employee_id,last_name,email,hire_date,job_id)
values('212','banu','banung@gmail.com',to_date('05-08-1979 04:30 AM','DD-MM-YYYY HH:MI AM'),'IT_PROG');

--check
select last_name,hire_date,to_date(hire_date,'DD-MM-YY HH:MI AM') from employees where last_name='banu';