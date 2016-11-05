DECLARE
  v_local_record EMPLOYEES%ROWTYPE;
BEGIN
   SELECT *
      INTO v_local_record
	FROM employees
	WHERE employee_id = 101;
END;
/

