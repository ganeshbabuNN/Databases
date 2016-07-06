create or replace
PROCEDURE emp_insert(
  p_employees_rec IN OUT EMPLOYEES%ROWTYPE )
AS
BEGIN
  IF p_employees_rec.employee_id IS NULL
  THEN
    SELECT employees_seq.nextval 
      INTO p_employees_rec.employee_id 
      FROM DUAL;
  END IF;

  INSERT INTO employees VALUES p_employees_rec;

END;
/

