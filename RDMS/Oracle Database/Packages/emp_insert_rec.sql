create or replace
PROCEDURE emp_insert(
  p_employees_rec IN EMPLOYEES%ROWTYPE )
AS
BEGIN
  INSERT INTO employees VALUES p_employees_rec;
END;
/

