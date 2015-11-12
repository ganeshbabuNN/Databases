--member implementing procedures and functions
--object Type
CREATE OR REPLACE TYPE emp_obj
AS OBJECT 
(
  last_name VARCHAR2(25),
  first_name VARCHAR2(20),
  email VARCHAR2(25),
  phone_number VARCHAR2(20),
  hire_date DATE,
  salary NUMBER(8,2),
  
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
NOT FINAL;
/

--Object Type Body
create or replace TYPE BODY emp_obj
AS 

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

--calling the object type
DECLARE  
  v_emp_obj emp_obj;
BEGIN  
  v_emp_obj := emp_obj(
    last_name => 'ganesh',
    first_name => 'baba',
    email => 'gbag@gmail.com',
    phone_number => '13423423',
    hire_date => sysdate,
    salary => 3344);
  v_emp_obj.print;    
  dbms_output.put_line(
    v_emp_obj.bonus(0.10));    
END;  
/