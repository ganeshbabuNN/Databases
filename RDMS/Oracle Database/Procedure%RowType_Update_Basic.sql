create or replace
PROCEDURE emp_update(
  p_employees_rec IN EMPLOYEES%ROWTYPE )
AS
BEGIN
  UPDATE employees 
    SET ROW = p_employees_rec
    WHERE employee_id = p_employees_rec.employee_id;
END;
/



--call the procedures
