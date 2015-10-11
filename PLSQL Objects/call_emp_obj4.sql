DECLARE  
  v_emp_obj emp_obj;
BEGIN

  v_emp_obj := emp_obj();

  v_emp_obj.print;
  
  v_emp_obj := emp_obj(
    email => 'gg@gmail.com' );
  
  v_emp_obj.print;
  
  v_emp_obj := emp_obj(
    last_name => 'gg',
    first_name => 'bb',
    email => 'ganesh@gmail.com',
    phone_number => 'ganesh',
    hire_date => sysdate,
    salary => 5000);

  v_emp_obj.print;
    
END;  
/

