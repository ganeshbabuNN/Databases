CREATE OR REPLACE TYPE emp_obj AS OBJECT 
(
  last_name VARCHAR2(25),
  first_name VARCHAR2(20),
  email VARCHAR2(25),
  phone_number VARCHAR2(20),
  hire_date DATE,
  salary NUMBER(8,2),
  --- the below code is placed by the oracle by default, no need to put expliclity . the attribute of the object type , to be ----same as the construtor attributes.
  CONSTRUCTOR FUNCTION emp_obj(
    last_name IN VARCHAR2,
    first_name IN VARCHAR2,
    email IN VARCHAR2,
    phone_number IN VARCHAR2,
    hire_date IN DATE,
    salary IN NUMBER )      
    RETURN SELF AS RESULT--- result which in turns return the instance of that actual objects..
)  
NOT FINAL;-- this keyword which is used to reuse in different type across the various create
/

---Type Body of the object
create or replace TYPE BODY emp_obj AS 
  --- this is the specification code
  CONSTRUCTOR FUNCTION emp_obj(
    last_name IN VARCHAR2,
    first_name IN VARCHAR2,
    email IN VARCHAR2,
    phone_number IN VARCHAR2,
    hire_date IN DATE,
    salary IN NUMBER )      
    RETURN SELF AS RESULT
  IS
  --- this is the actual code which is the code 
  BEGIN
    SELF.last_name := last_name;   ----'SELF' this is trying to assigning the body to the instance of the object
    SELF.first_name := first_name;
    SELF.email := email;
    SELF.phone_number := phone_number;
    SELF.hire_date := hire_Date;
    SELF.salary := salary;
    
    RETURN;
  END;
END;
/

--calling the object
DECLARE  
  v_emp_obj emp_obj;
BEGIN
  v_emp_obj := emp_obj(
    last_name => 'ganesh',
    first_name => 'babu',
    email => 'ganesh@g.com',
    phone_number => 'ga',
    hire_date => sysdate,
    salary => 32323);  
END;  
/