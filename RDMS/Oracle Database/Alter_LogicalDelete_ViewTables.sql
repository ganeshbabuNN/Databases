--add some column
alter table employees
ADD (newemployeeid number(10));
  
--view
select employee_id,newemployeeid from employees;

--logical delete
ALTER table employees set unused(newemployeeid);

--to veiw the columns that are unused,
select * from user_UNUSED_COL_TABS;