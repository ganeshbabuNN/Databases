DECLARE  
  v_emp_obj emp_obj;
BEGIN

  v_emp_obj := emp_obj(
    last_name => 'Cunningham',
    first_name => 'Lewis',
    email => 'lewisc@databasewisdom.com',
    phone_number => '813-555-5555',
    hire_date => sysdate,
    salary => 5000);
  
END;  
/


