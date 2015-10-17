DECLARE  
  v_emp_obj emp_obj;
BEGIN
  
  v_emp_obj := emp_obj(
    last_name => 'ganesh',
    first_name => 'babu',
    email => 'ganesh@gmail.com',
    phone_number => '9663895384',
    hire_date => sysdate,
    salary => 5000);

  v_emp_obj.print;
    
  dbms_output.put_line(
    v_emp_obj.bonus(0.10) );
    
END;  
/
