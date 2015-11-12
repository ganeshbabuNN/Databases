Ensure there is a trigger on the employee table.

Trigger_CompundTrigger.sql

--create a trigger on the view
CREATE OR REPLACE TRIGGER UPD_EMPS_BY_DEPT 
INSTEAD OF UPDATE ON HR_EMPS_BY_DEPT  ---instead of trigger on view
BEGIN
  UPDATE employees
    SET department_id = :new.department_id
    WHERE last_name = :old.last_name;
END;
/

CREATE OR REPLACE TRIGGER UPD_EMPS_BY_DEPT 
INSTEAD OF UPDATE ON HR_EMPS_BY_DEPT  ---instead of trigger on view
BEGIN
  UPDATE employees
    SET department_id = :new.department_id
    WHERE first_name= :old.first_name;
END;
/


--run the update
UPDATE hr_emps_by_dept
  SET department_id = 10
  WHERE first_name='Kimberely';