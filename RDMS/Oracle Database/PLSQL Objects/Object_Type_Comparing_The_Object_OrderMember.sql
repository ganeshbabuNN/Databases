--ORDER Function can be used , since it passes one instance of one object to another instance object which gives the uniqness 
--it always return 1(it means greater then the other) ,0(mean equal to other) and -1(less then the other)
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
  
  ORDER MEMBER FUNCTION comp(  --- Order Member
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
NOT FINAL ;
/

--Object Type Body

create or replace TYPE BODY emp_obj
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

---Call the object
DECLARE  
  v_emp_obj emp_obj;
  v_emp_obj2 emp_obj;
BEGIN
  v_emp_obj := emp_obj(
    last_name => 'ganesh',
    first_name => 'babu',
    email => 'ganesh@yahoo.com',
    phone_number => '9663895384',
    hire_date => sysdate,
    salary => 5000);	
  v_emp_obj2 := emp_obj(
    last_name => 'ganesh',
    first_name => 'babu',
    email => 'ganesh@yahoo.com',
    phone_number => '32432',
    hire_date => sysdate,
    salary => 3000);
  IF v_emp_obj = v_emp_obj2
  THEN
    DBMS_OUTPUT.PUT_LINE('equality');
  ELSIF v_emp_obj < v_emp_obj2
  THEN
    DBMS_OUTPUT.PUT_LINE('less than');
  ELSIF v_emp_obj > v_emp_obj2
  THEN
    DBMS_OUTPUT.PUT_LINE('greater than');
  ELSE
    DBMS_OUTPUT.PUT_LINE('else');
  END IF;  
END;  
/