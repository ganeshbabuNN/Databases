select first_name ||last_name,phone_number,hire_date from employees where job_id='IT_PROG'
union
select first_name ||last_name name,phone_number,hire_date from employees where job_id='SA_REP';

--displays only the distinct values and null value are not ignored udring duplicate checking.
---The UNION clause picks up the common records as well as the individual records --in both queries
