DECLARE
  CURSOR c1(p_employee_id IN employees.employee_id%TYPE ) IS
    SELECT first_name, last_name, email, phone_number, hire_date
      FROM employees
      WHERE employee_id = p_employee_id;
      
  v_local_record C1%ROWTYPE;
BEGIN
   SELECT first_name, last_name, email, phone_number, hire_date
      INTO v_local_record
	FROM employees
	WHERE employee_id = 101;
END;
/