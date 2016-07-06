DECLARE
  CURSOR c1 IS
    SELECT first_name, last_name, email, phone_number, hire_date
      FROM employees
      WHERE employee_id = 101;
      
  v_local_record C1%ROWTYPE;
BEGIN
   SELECT first_name, last_name, email, phone_number, hire_date
      INTO v_local_record
	FROM employees
	WHERE employee_id = 101;
END;
/

