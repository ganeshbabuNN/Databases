DECLARE
  v_CURSOR_string VARCHAR2(2001) := '
    SELECT first_name, last_name, email, phone_number, hire_date
      FROM employees
      WHERE employee_id = :p_employee_id
  ';    
  v_local_record employees%ROWTYPE;
BEGIN
  v_local_record.employee_id := 101;
  execute immediate v_cursor_string 
     into v_local_record.last_name,
          v_local_record.first_name,
          v_local_record.email,
          v_local_record.phone_number,
          v_local_record.hire_date
         using v_local_record.employee_id;
	logit(v_local_record.email, 'D');	
END;
/