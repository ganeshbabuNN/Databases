DECLARE
  CURSOR c1( p_cnt IN NUMBER ) IS
    SELECT first_name, last_name, email, phone_number, hire_date
      FROM employees
      WHERE rownum < p_cnt;      
  v_local_record C1%ROWTYPE;
BEGIN
  OPEN c1(10);	
  LOOP
    FETCH c1 INTO v_local_record;
      logit(v_local_record.email, 'D');	
    EXIT WHEN c1%ROWCOUNT = 4;     ---restrict
  END LOOP;  
  CLOSE c1;
END;
/