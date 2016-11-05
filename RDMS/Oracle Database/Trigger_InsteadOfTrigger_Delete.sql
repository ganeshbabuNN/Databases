---create a view
drop view vemployees;

create or replace view vemployees as 
select employee_id,first_name,last_name,email,hire_date,job_id,salary,
d.department_id,department_name from employees e,departments d
where e.department_id=d.department_id;

select * from departments;
--create the insteadOfTrigger 
--allow delete via 
CREATE OR REPLACE TRIGGER DeleteEmpForView
		INSTEAD OF DELETE ON vemployees
		FOR EACH ROW
		DECLARE
			varEmployees Number;

		BEGIN
			DELETE FROM Employees WHERE employee_Id = :OLD.employee_Id;
			SELECT COUNT(*) INTO varEmployees FROM Employees 
				WHERE Employees.department_id = :OLD.department_id;
		/* Checking if no employee exists in a particular department */
			IF varEmployees = 0 THEN
				DELETE FROM Departments WHERE department_id = :OLD.department_id;
			END IF;
		END;
	/
  
--test the trigger
--delete the trigger --not checked
delete from vemployees where employee_id=211;

--now check the employee and department both those records to be deleted
