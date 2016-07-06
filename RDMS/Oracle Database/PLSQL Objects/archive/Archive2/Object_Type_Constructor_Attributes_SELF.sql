-- here we are using constructor args by passing some parameters
--'SELF' this is trying to assigning the body to the instance of the object
---OBject Type Spec
CREATE OR REPLACE TYPE emp_obj AS OBJECT 
(
  last_name VARCHAR2(25),
  first_name VARCHAR2(20),
  email VARCHAR2(25),
  phone_number VARCHAR2(20),
  hire_date DATE,
  salary NUMBER(8,2),
  
  CONSTRUCTOR FUNCTION emp_obj
    RETURN SELF AS RESULT,   ---'SELF' this is trying to assigning the body to the instance of the object
    
  CONSTRUCTOR FUNCTION emp_obj(
    email IN VARCHAR2 )      
    RETURN SELF AS RESULT
)  
NOT FINAL ;
/

--object type body
create or replace  TYPE BODY emp_obj
AS 
  CONSTRUCTOR FUNCTION emp_obj
    RETURN SELF AS RESULT
  IS
  BEGIN
    RETURN;
  END;  
  
  CONSTRUCTOR FUNCTION emp_obj(
    email IN VARCHAR2 )      
    RETURN SELF AS RESULT
  IS
  BEGIN   --- implementation code
    SELF.email := email;    
    dbms_output.put_line(email);
    RETURN;
  END;
END;
/

---calling the object
DECLARE  
  v_emp_obj emp_obj;
BEGIN
  v_emp_obj := emp_obj(); -- you called empty also
  v_emp_obj := emp_obj( -- with one arguments also
    email => 'ganesh@gmail.com' );  
  v_emp_obj := emp_obj(
    last_name => 'ga',
    first_name => 'bab',
    email => 'gag@ba.cpm',
    phone_number => '3423423423',
    hire_date => sysdate,
    salary => 2333);  
END; 
/