--adding the sequence of the output
select ROWNUM,first_name,last_name from employees;

--Top three employeess
select ROWNUM,first_name,last_name from employees
where rownum <3;