CREATE OR REPLACE TRIGGER UPD_EMPS_BY_DEPT 
INSTEAD OF UPDATE ON HR_EMPS_BY_DEPT 
BEGIN
  UPDATE employees
    SET department_id = :new.department_id
    WHERE last_name = :old.last_name;
END;
/

