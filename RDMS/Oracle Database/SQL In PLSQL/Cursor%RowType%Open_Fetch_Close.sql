DECLARE
  CURSOR c1( p_employee_id IN employees.employee_id%TYPE ) IS
    SELECT first_name, last_name, email, phone_number, hire_date
      FROM employees
      WHERE employee_id = p_employee_id;      
  v_local_record C1%ROWTYPE;
BEGIN
    OPEN c1(101);	
	FETCH c1 INTO v_local_record;	
	CLOSE c1;	
	logit(v_local_record.email, 'D');	
END;
/