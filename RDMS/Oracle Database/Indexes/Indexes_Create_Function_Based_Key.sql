--function based index not for aggregate functions
create index idx_employeecity on employees (UPPER(job_Id),extract(Month from hire_date));

---now the query will invokes the index
select employee_id,first_name,last_name,job_id,department_id
from employees where upper(job_id)='IT_PROG' ;

---now the query will invokes the index
select employee_id,first_name,last_name,job_id,department_id
from employees where EXTRACT(MONTH FROM hire_date)='01';