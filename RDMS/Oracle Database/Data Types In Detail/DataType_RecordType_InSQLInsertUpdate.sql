DECLARE
  v_person employees%ROWTYPE;	
BEGIN

  SELECT * 
    INTO v_person  --record type stored from the table
    FROM employees
    WHERE employee_id = 115;
    
  v_person.salary := v_person.salary * 1.05;

  UPDATE employees
    SET row = v_person  -- record type used in a row.
    WHERE employee_id = v_person.employee_id;
  
  v_person.employee_id := 1111;
  v_person.last_name := 'Ganesh';
  v_person.first_name := 'bab';
  v_person.email := 'ganesh@baba.com';
  
  INSERT INTO employees VALUES v_person; --record type inserting into the table
    
END;
/