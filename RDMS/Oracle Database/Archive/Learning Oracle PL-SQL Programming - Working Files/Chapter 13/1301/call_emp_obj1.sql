DECLARE
  TYPE r_emps IS RECORD
  (
    last_name VARCHAR2(25),
    first_name VARCHAR2(20),
    email VARCHAR2(25),
    phone_number VARCHAR2(20),
    hire_date DATE,
    salary NUMBER(8,2)
  ) ;
  
  v_emps r_emps;
  
  v_emp_obj emp_obj;
BEGIN
  v_emps.last_name := 'Cunningham';
  v_emps.first_name := 'Lewis';
  
  v_emp_obj := emp_obj(
    last_name => 'Cunningham',
    first_name => 'Lewis',
    email => 'lewisc@databasewisdom.com',
    phone_number => '813-555-5555',
    hire_date => sysdate,
    salary => 5000);
  
END; 
/

