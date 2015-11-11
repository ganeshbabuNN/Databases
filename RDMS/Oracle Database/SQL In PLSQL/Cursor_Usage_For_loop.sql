DECLARE
  CURSOR c1( p_cnt IN NUMBER ) IS
    SELECT first_name, last_name, email, phone_number, hire_date
      FROM employees
      WHERE rownum < p_cnt;
BEGIN
  FOR v_local_record IN c1(10)
  LOOP
    logit(v_local_record.email, 'D');
  END LOOP;  
END;
/
