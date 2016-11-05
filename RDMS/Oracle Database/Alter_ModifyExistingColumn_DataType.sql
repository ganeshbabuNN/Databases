--adding the column
alter table employees
add (newemployee number(15));

--checking
select * from employees;

--altering the number size of the existing column
alter table employees
MODIFY(newemployee number(33));