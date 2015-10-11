DECLARE  
  v_emp_obj emp_obj;
  v_emp_obj2 emp_obj;
BEGIN

  v_emp_obj := emp_obj(
    last_name => 'ganesh',
    first_name => 'babu',
    email => 'ganesh@gmail.com',
    phone_number => '966389538',
    hire_date => sysdate,
    salary => 5000);
	
  v_emp_obj2 := emp_obj(
    last_name => 'ganesh',
    first_name => 'babu',
    email => 'ganesh@yahoo.com',
    phone_number => '966389538',
    hire_date => SYSDATE,
    salary => 3000);

  IF v_emp_obj = v_emp_obj2
  THEN
    DBMS_OUTPUT.PUT_LINE('equality');
  ELSE
    DBMS_OUTPUT.PUT_LINE('inequality');
  END IF;  
END; 
/
