select first_name ||last_name name,phone_number,hire_date,job_id from employees where job_id IN ('SA_REP','IT_PROG');
MINUS
select first_name ||last_name,phone_number,hire_date,job_id from employees where job_id='IT_PROG';


--the output of both the queries will be as displayed below. the final output of the minus clause will be : Output=Records only in query one.
--Basically MINUS clause picks up records in the first query after filtering the records retrived by the second query.


