create or replace
PROCEDURE emp_delete(
  p_employee_id IN employees.employee_id%TYPE )
AS
BEGIN
  DELETE FROM employees 
    WHERE employee_id = p_employee_id;
END;
/

