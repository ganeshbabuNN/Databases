CREATE OR REPLACE TYPE emp_obj
AS OBJECT 
(
  last_name VARCHAR2(25),
  first_name VARCHAR2(20),
  email VARCHAR2(25),
  phone_number VARCHAR2(20),
  hire_date DATE,
  salary NUMBER(8,2),
  
  CONSTRUCTOR FUNCTION emp_obj
    RETURN SELF AS RESULT,
    
  CONSTRUCTOR FUNCTION emp_obj(
    email IN VARCHAR2 )      
    RETURN SELF AS RESULT
)  
NOT FINAL 
/

create or replace
TYPE BODY emp_obj
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
  BEGIN
    SELF.email := email;
    
    RETURN;
  END;
END;
/

create or replace
TYPE BODY emp_obj
AS 

  CONSTRUCTOR FUNCTION emp_obj
    RETURN SELF AS RESULT
  IS
  BEGIN
    SELF.salary := 0;
    RETURN;
  END;  
  
  CONSTRUCTOR FUNCTION emp_obj(
    email IN VARCHAR2 )      
    RETURN SELF AS RESULT
  IS
  BEGIN
    SELF.email := email;
    
    RETURN;
  END;
END;
/
