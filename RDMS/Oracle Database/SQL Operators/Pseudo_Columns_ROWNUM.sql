--adding the sequence of the output
select rownum,first_name,last_name from employees;

--Top three employeess
select rownum,first_name,last_name from employees
where rownum <3;