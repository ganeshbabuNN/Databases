--adding columns
alter table employees
  ADD(addnewno number(15));

--check the column
select employee_id,addnewno from employees;

--renaming to new column
ALTER TABLE employees
 RENAME column addnewno to addnewnewno;
 
--check with the new column name
select employee_id,addnewnewno from employees;