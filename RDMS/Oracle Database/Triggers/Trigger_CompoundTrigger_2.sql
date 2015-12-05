/*
In previous release of oracle DB, this type of functionality was only possible by defining multiple triggers whose code spec and global variables were defined in a separate package, but the compound triggers allows for a much tidier solutions.
/*
drop table EmployeeAuditTrail;
create table EmployeeAuditTrail(
employee_id number(10),
first_name varchar2(25),
last_name varchar2(34),
salary number(10),
user_name varchar2(21),
operation_date date,
ModeOfOperation varchar2(10)
);

drop table newEmployees;
create table newemployees(
employee_id number(10),
first_name varchar2(23)
);
---Compound trigger
create or replace 
trigger employeeAudit
		FOR INSERT OR UPDATE OR DELETE ON employees
		COMPOUND TRIGGER
			varKindOfOperation Varchar2(8);
			varOperationDate Date;
			varUser Varchar2(8);
			maxEmployeeNo Number(10);

		AFTER EACH ROW IS  ---first trigger
		BEGIN
			varOperationDate := SYSDATE;
			varUser := USER;

			IF UPDATING THEN 
				varKindOfOperation := 'Update';
			ELSIF DELETING THEN
				varKindOfOperation := 'Delete';
			END IF;
      
    insert into EmployeeAuditTrail 
      values(:OLD.employee_id,:OLD.first_name,:OLD.last_name,:OLD.salary,
       varUser,varOperationDate,varKindOfOperation); 			
		END AFTER EACH ROW;

		BEFORE EACH ROW IS ---second trigger
		BEGIN
			IF INSERTING THEN 
				SELECT NVL(MAX(employee_id), 0) + 1 INTO maxEmployeeNo FROM newemployees;
				INSERT INTO newemployees (employee_id, first_name) 
					VALUES(maxEmployeeNo, :NEW.first_name);
			END IF;
		END BEFORE EACH ROW;
	END;
  /
  
--test the trigger
select * from newemployees;
select * from EmployeeAuditTrail;
select * from employees;

--update and check audit table
update employees
set salary =salary *10
where job_id='IT_PROG';

--delete and check audit table
delete employees where employee_id=207;

--insert and check the newemployee,employees and audit table
insert into employees values(208,'ganesh','babu',
'ganesh@sd.com',234324323,'01-dec-15','IT_PROG',8000,null,100,60,0);


