---save the file has showemployee.sql
SET ECHO OFF
SET VERIFY OFF
SELECT employee_id,first_name,last_name,salary from employees where
employee_id='&1';

--in sqlplus pass the parameters
@C:\showemployee.sql 100

