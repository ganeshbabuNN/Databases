/* Every salary updates, update the difference */
CREATE OR REPLACE TRIGGER displaytotalsalary
AFTER  
  INSERT OR UPDATE OR DELETE ON employees
	FOR EACH ROW WHEN(NEW.employee_id>0) --- Trigger constraints
DECLARE
  vartotal number;
BEGIN				  --Trigger body
	Select sum(salary) into vartotal from employees;
  DBMS_OUTPUT.put_line('Total Salary'|| vartotal);
END;
/

select max(employee_id) from employees;
desc employees;
--insert trigger
insert into employees values(213,'ganesh','babu',
'ganesh@idis.com',234324323,'01-dec-15','IT-PROG',23234,null,100,60,0);

--delete trigger
Delete from employees where employee_id=211;

--Update triggers
select * from employees;
update employees
set salary =Salary*1.10 Where department_id=60;

/*
-A table employees is begin queried in the trigger named displaytotalsalary that is based
on the same table, a mutating error is received.
*/







---
SELECT owner,
  constraint_name,
  table_name,
  constraint_type,
  search_condition,
  r_owner,
  r_constraint_name
FROM USER_CONSTRAINTS 
where table_name ='EMPLOYEES';