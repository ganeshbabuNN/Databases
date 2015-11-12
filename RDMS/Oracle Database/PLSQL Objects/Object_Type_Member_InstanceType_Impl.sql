---Member functions will allows to create an instance of an Type, which contain data

--Object Type spec
CREATE OR REPLACE TYPE emp_obj
AS OBJECT 
(
  last_name VARCHAR2(25),
  first_name VARCHAR2(20),
  email VARCHAR2(25),
  phone_number VARCHAR2(20),
  hire_date DATE,
  salary NUMBER(8,2),
  
  MEMBER PROCEDURE print, --- included the print procedures
  
  CONSTRUCTOR FUNCTION emp_obj
    RETURN SELF AS RESULT,
    
  CONSTRUCTOR FUNCTION emp_obj(
    email IN VARCHAR2 )      
    RETURN SELF AS RESULT
)  
NOT FINAL ;
/

--Object Type Body with implementations type
create or replace TYPE BODY emp_obj
AS 

  MEMBER PROCEDURE print    --- implemented the print procedure just for printing the last name...etc
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

--calling the print of the Object emp_obj
DECLARE  
  v_emp_obj emp_obj;
BEGIN
  v_emp_obj := emp_obj();
  v_emp_obj.print;  
  v_emp_obj := emp_obj(
    email => 'ganesh@gmail.com' );  
  v_emp_obj.print;  
  v_emp_obj := emp_obj(
    last_name => 'ga',
    first_name => 'dd',
    email => 'ganesh@gmail.com',
    phone_number => '3322',
    hire_date => sysdate,
    salary => 333);
  v_emp_obj.print;    
END;  
/


---Even you call the object type with the instance name with 'v_emp_obj.last_name
DECLARE  
  v_emp_obj emp_obj;
BEGIN
  v_emp_obj := emp_obj();
  DBMS_OUTPUT.PUT_LINE('Last Name: ' || v_emp_obj.last_name);
  DBMS_OUTPUT.PUT_LINE('Email: ' || v_emp_obj.email);
  DBMS_OUTPUT.PUT_LINE('Salary: ' || TO_CHAR(v_emp_obj.salary));    
END;  
/
