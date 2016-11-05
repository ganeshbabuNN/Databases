---create a view
drop view vemployees;

create or replace view vemployees as 
select employee_id,first_name,last_name,email,hire_date,job_id,salary,
d.department_id,department_name from employees e,departments d
where e.department_id=d.department_id;

select * from departments;
--create the insteadOfTrigger 
--allow insert and update via view
CREATE OR REPLACE TRIGGER UpdateEmpForView
		INSTEAD OF INSERT ON vemployees 
    FOR EACH ROW
		DECLARE
			varEmployees Number;
			varDepartments Number;
		BEGIN 
			SELECT COUNT(*) INTO varEmployees FROM Employees 
				WHERE Employees.employee_id = :NEW.employee_id;
		/* Checking if employee does not exists */
			IF varEmployees = 0 THEN
				INSERT INTO Employees (employee_id, first_name, last_name,email,hire_date,job_id,Salary) 
					VALUES(:NEW.employee_id, :NEW.first_name, :NEW.last_name,:NEW.email,:NEW.hire_date,:NEW.job_id,:NEW.Salary);
			ELSE
			UPDATE Employees 
      SET Employees.first_name = :NEW.first_name, 
					Employees.last_name = :NEW.last_name,
          Employees.email = :NEW.email,
          Employees.hire_date = :NEW.hire_date,          
          Employees.job_id = :NEW.job_id,
					Employees.Salary = :NEW.Salary,
					Employees.department_id = :NEW.department_id
						WHERE Employees.employee_id = :NEW.employee_id;
			END IF;
      
			SELECT COUNT(*) INTO varDepartments FROM Departments
				WHERE Departments.department_id = :NEW.department_id;
		/* Checking if department does not exists */
			IF varDepartments = 0 THEN
				INSERT INTO Departments (department_id, department_name) 
					VALUES(:NEW.department_id, :NEW.department_name);
			ELSE
				UPDATE Departments 
          SET Departments.department_name = :NEW.department_name
					WHERE Departments.department_id = :NEW.department_id;
			END IF; 
		END;
	/
  
--test the trigger
select * from vemployees;
select employee_id,first_name,last_name,email,hire_date,job_id,salary,department_id,department_name from vemployees;

--insert where employee id exists
insert into vemployees values(208,'ganesh','babu','ganesh@wew.com','01-dec-13',
'PU_CLERK',39232.24,100,'Cleark');

--insert where not employee id exists
insert into vemployees values(212,'ganesh','babu','ganesh@wddw.com','02-dec-13',
'IT_PROG',39232.24,20,'Marketing');


