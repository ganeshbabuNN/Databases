DECLARE  
  v_emp_obj emp_obj;
  v_emp_obj2 emp_obj;
BEGIN

  v_emp_obj := emp_obj(
    last_name => 'Cunningham',
    first_name => 'Logan',
    email => 'lewisc@databasewisdom.com',
    phone_number => '813-555-5555',
    hire_date => sysdate,
    salary => 5000);
	
  v_emp_obj2 := emp_obj(
    last_name => 'Cunningham',
    first_name => 'Lewis',
    email => 'loganc@databasewisdom.com',
    phone_number => '813-555-5555',
    hire_date => sysdate,
    salary => 3000);

  IF v_emp_obj = v_emp_obj2
  THEN
    DBMS_OUTPUT.PUT_LINE('equality');
  ELSE
    DBMS_OUTPUT.PUT_LINE('inequality');
  END IF;  
END; 
/
