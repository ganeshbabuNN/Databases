BEGIN

  FOR v_local_record IN (
    SELECT first_name, last_name, email, phone_number, hire_date
      FROM employees
      WHERE rownum < 10)
  LOOP

    logit(v_local_record.email, 'D');

  END LOOP;
  
END;
/
