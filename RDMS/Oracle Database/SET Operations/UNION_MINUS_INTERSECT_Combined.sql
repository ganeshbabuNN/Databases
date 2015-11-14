(select first_name ||last_name,phone_number,hire_date,job_id from employees where job_id='IT_PROG'
union
select first_name ||last_name name,phone_number,hire_date,job_id from employees where job_id='SA_REP')
MINUS
(select first_name ||last_name name,phone_number,hire_date,job_id from employees where job_id IN ('SA_REP','IT_PROG')
INTERSECT
select first_name ||last_name,phone_number,hire_date,job_id from employees where job_id='IT_PROG');
