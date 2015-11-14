select first_name ||last_name,phone_number,hire_date from employees where job_id='IT_PROG'
INTERSECT
select first_name ||last_name name,phone_number,hire_date from employees where job_id IN ('SA_REP','IT_PROG');

/*
the output of both the queries wil be as displayed above. the final output of the intersect clause will be : Output=A Single set of records which are common in the both queries
*/