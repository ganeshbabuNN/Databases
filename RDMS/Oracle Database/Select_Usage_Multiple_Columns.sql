DECLARE
  p_first_name employees.first_name%TYPE;
  p_last_name employees.last_name%TYPE;
  p_email employees.email%TYPE;
  p_phone_number employees.phone_number%TYPE;
  p_hire_date employees.hire_date%TYPE;
BEGIN
  SELECT first_name, last_name, email, phone_number, hire_date
    INTO p_first_name, p_last_name, p_email, p_phone_number, p_hire_date
	FROM employees
	WHERE employee_id = 101;
END;
/