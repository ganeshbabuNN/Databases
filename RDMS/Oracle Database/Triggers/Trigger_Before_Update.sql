/* Every salary updates, update the difference */
CREATE OR REPLACE TRIGGER DisplaySalChages
BEFORE 
  UPDATE ON employees
	FOR EACH ROW WHEN(NEW.employee_id>0) --- Trigger constraints
DECLARE
  varDiff number;
BEGIN				  --Trigger body
	 varDiff := :NEW.salary-:OLD.salary;
  DBMS_OUTPUT.PUT_LINE('Employee No: ' || :NEW.employee_id);
  DBMS_OUTPUT.PUT_LINE('Old Salary: ' || :OLD.salary);
  DBMS_OUTPUT.PUT_LINE('New Salary: ' || :NEW.salary);
  DBMS_OUTPUT.PUT_LINE('Difference: ' || varDiff);
END;
/

--Update triggers
select * from employees;
update employees
set salary =Salary*1.10 Where department_id=60;