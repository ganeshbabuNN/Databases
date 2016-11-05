DECLARE  
  v_emp_obj emp_obj;
  v_emp_obj2 executive;
BEGIN

  v_emp_obj := emp_obj(
    last_name => 'Cunningham',
    first_name => 'Logan',
    email => 'lewisc@databasewisdom.com',
    phone_number => '813-555-5555',
    hire_date => sysdate,
    salary => 5000);
	
  v_emp_obj.print;
    
  dbms_output.put_line(
    v_emp_obj.bonus(0.10) );
    
  v_emp_obj2 := executive(
    last_name => 'Cunningham',
    first_name => 'Lewis',
    email => 'lewisc@databasewisdom.com',
    phone_number => '813-555-5555',
    hire_date => sysdate,
    salary => 5000,
    key_to_washroom => 1);

  v_emp_obj.print;
    
  dbms_output.put_line(
    v_emp_obj2.bonus(0.10) );
    
  IF v_emp_obj = v_emp_obj2
  THEN
    DBMS_OUTPUT.PUT_LINE('equality');
  ELSIF v_emp_obj < v_emp_obj2
  THEN
    DBMS_OUTPUT.PUT_LINE('less than');
  ELSIF v_emp_obj > v_emp_obj2
  THEN
    DBMS_OUTPUT.PUT_LINE('greater than');
  ELSE
    DBMS_OUTPUT.PUT_LINE('else');
  END IF;  
END;
/
