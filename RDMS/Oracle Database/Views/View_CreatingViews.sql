---employees table
select * from employees;

--create a view for IT dept
CREATE VIEW vw_IT_Employees AS
select employee_id,first_name,last_name from employees where
job_id ='IT_PROG';

--create a view for CLERK
CREATE VIEW vw_CLERK_Employees AS
select employee_id,first_name,last_name from employees where
job_id ='PU_CLERK';

