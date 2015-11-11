DECLARE
  CURSOR c1( p_employee_id IN employees.employee_id%TYPE ) IS
    SELECT first_name, last_name, email, phone_number, hire_date
      FROM employees
      WHERE employee_id = p_employee_id;
      
  v_local_record C1%ROWTYPE;
BEGIN
    OPEN c1(11111);	
    FETCH c1 INTO v_local_record;	
    IF c1%NOTFOUND
    THEN 
    logit('no record found' ,'D' );
    end if;
    CLOSE c1;	
    logit(v_local_record.email, 'D');	
END;
/