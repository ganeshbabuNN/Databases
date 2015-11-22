insert into employeesdetails
select employee_id,first_name||last_name,phone_number from employees
where JOB_ID='IT_PROG';  --use this conditions for restriction the rows