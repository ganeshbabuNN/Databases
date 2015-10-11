DECLARE  
  v_emp_obj emp_obj;
BEGIN

  v_emp_obj := emp_obj();

  v_emp_obj := emp_obj(
    email => 'gb@gmail.com' );
  
  v_emp_obj := emp_obj(
    last_name => 'ganesh',
    first_name => 'Babu',
    email => 'Ganesh@gmail.com',
    phone_number => '43535435',
    hire_date => sysdate,
    salary => 5000);
  
END; 
/
