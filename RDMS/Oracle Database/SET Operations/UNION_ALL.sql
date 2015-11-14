select first_name ||last_name,phone_number,hire_date from employees where job_id='IT_PROG'
union ALL
select first_name ||last_name name,phone_number,hire_date from employees where job_id='SA_REP';

---UNION ALL operator picks up all records as well as the individual records in both queries