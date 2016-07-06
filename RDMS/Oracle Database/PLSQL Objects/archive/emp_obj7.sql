CREATE OR REPLACE TYPE emp_obj
AS OBJECT 
(
  last_name VARCHAR2(25),
  first_name VARCHAR2(20),
  email VARCHAR2(25),
  phone_number VARCHAR2(20),
  hire_date DATE,
  salary NUMBER(8,2),
  
  ORDER MEMBER FUNCTION comp( 
       p_emp_obj IN emp_obj )
    RETURN NUMBER,
    
  MEMBER PROCEDURE print,
  
  MEMBER FUNCTION bonus(
    p_percent IN NUMBER )
    RETURN NUMBER,
  
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

  ORDER MEMBER FUNCTION comp( 
       p_emp_obj IN emp_obj )
    RETURN NUMBER
  AS
  BEGIN
    IF SELF.last_name = p_emp_obj.last_name 
       AND SELF.email = p_emp_obj.email
       AND SELF.salary = p_emp_obj.salary
    THEN
      RETURN 0;
    ELSIF (SELF.last_name = p_emp_obj.last_name 
       AND SELF.email = p_emp_obj.email)
       AND SELF.salary != p_emp_obj.salary
    THEN 
      RETURN 1;
    ELSE
      RETURN -1;
    END IF;
  END;
  
  MEMBER FUNCTION bonus(
    p_percent IN NUMBER )
    RETURN NUMBER
  AS
  BEGIN
    RETURN SELF.salary * p_percent;
  END;
  
  MEMBER PROCEDURE print
  IS
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || SELF.last_name);
    DBMS_OUTPUT.PUT_LINE('Email: ' || SELF.email);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || TO_CHAR(SELF.salary));
  END;
    
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
