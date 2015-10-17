CREATE OR REPLACE TYPE emp_obj
AS OBJECT 
(
  last_name VARCHAR2(25),
  first_name VARCHAR2(20),
  email VARCHAR2(25),
  phone_number VARCHAR2(20),
  hire_date DATE,
  salary NUMBER(8,2),
  
  CONSTRUCTOR FUNCTION emp_obj(
    last_name IN VARCHAR2,
    first_name IN VARCHAR2,
    email IN VARCHAR2,
    phone_number IN VARCHAR2,
    hire_date IN DATE,
    salary IN NUMBER )      
    RETURN SELF AS RESULT
)  
NOT FINAL;
/

create or replace
TYPE BODY emp_obj
AS 

  CONSTRUCTOR FUNCTION emp_obj(
    last_name IN VARCHAR2,
    first_name IN VARCHAR2,
    email IN VARCHAR2,
    phone_number IN VARCHAR2,
    hire_date IN DATE,
    salary IN NUMBER )      
    RETURN SELF AS RESULT
  IS
  BEGIN
    SELF.last_name := last_name;
    SELF.first_name := first_name;
    SELF.email := email;
    SELF.phone_number := phone_number;
    SELF.hire_date := hire_Date;
    SELF.salary := salary;
    
    RETURN;
  END;
END;

/