Delete from employees where employee_id 
NOT IN (select employee_id from job_history);