---validating the employee id and salary range
CREATE OR REPLACE TRIGGER ValidateTransaction
		BEFORE INSERT  ON employees FOR EACH ROW 
		DECLARE
			varEmployeeId Varchar2(10) := 0;
			varSalary Number(10);

		BEGIN
		/* Checking if the account number is a valid account number. */
			SELECT COUNT(employee_id) INTO varEmployeeId FROM employees 
				WHERE employee_id = :NEW.employee_id;

			IF varEmployeeId = 0 THEN			
				RAISE_APPLICATION_ERROR(-20000,'The Employee ID is invalid.');
			END IF;
		/* Checking if the transaction amount is a positive number. */
			IF :NEW.salary <= 0 THEN			
				RAISE_APPLICATION_ERROR(-20001,'The Transaction salary cannot be negative or zero.');
			END IF;

		/* Checking if the transaction amount exceeds the current balance in case of withdrawals. */
			SELECT salary INTO varSalary FROM employees 
				WHERE employee_id = :NEW.employee_id;
	 

			IF varSalary < :NEW.salary AND :NEW.job_id = 'IT_PROG' THEN
				RAISE_APPLICATION_ERROR(-20002,'The salary of the this Employee who works in this Deparmtent exceeds the range');
			END IF;      
		END;
	/
select * from jobs where job_id ='IT_PROG';
select * from employees where job_id ='IT_PROG';
select max(employee_id) from employees;

--test the trigger
--insert 
--with the invalid employee_id
insert into employees values(209,'ganesh','babu',
'ganesh@idis.com',234324323,'01-dec-15','IT_PROG',8000,null,100,60,0);
--with the negative salary
insert into employees values(101,'ganesh','babu',
'ganesh@idis.com',234324323,'01-dec-15','IT_PROG',-120202,null,100,60,0);
--with the negative salary
insert into employees values(209,'ganesh','babu',
'ganesh@idis.com',234324323,'01-dec-15','IT_PROG',8000,null,100,60,0);

--update
select * from jobs where job_id ='IT_PROG';
select * from employees where salary > 4000;

--with the exceed range ---need to check
insert into employees values(209,'ganesh','babu',
'ganesh@idis.com',234324323,'01-dec-15','IT-PROG',80555,null,100,60,0);

