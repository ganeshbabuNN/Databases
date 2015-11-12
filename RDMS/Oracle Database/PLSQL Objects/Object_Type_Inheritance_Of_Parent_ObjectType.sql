--inheritance

--object Type of the inheritance of emp_obj object
create or replace TYPE executive UNDER emp_obj
(
  key_to_washroom NUMBER,  
  OVERRIDING MEMBER PROCEDURE print,  ---Inheritance capability
  OVERRIDING MEMBER FUNCTION bonus(
    p_percent IN NUMBER )
    RETURN NUMBER
);
/

--Object Type Body

CREATE OR REPLACE TYPE BODY EXECUTIVE AS
  OVERRIDING MEMBER PROCEDURE print AS
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || SELF.last_name); -- all this variable from the emp_obj object
    DBMS_OUTPUT.PUT_LINE('Email: ' || SELF.email);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || TO_CHAR(SELF.salary));
    DBMS_OUTPUT.PUT_LINE('key_to_washroom: ' || TO_CHAR(SELF.salary));
  END print;

  OVERRIDING MEMBER FUNCTION bonus(
    p_percent IN NUMBER )
    RETURN NUMBER AS
  BEGIN
    RETURN SELF.salary * p_percent +
        (SELF.salary * 0.05);
  END;
END;
/

--Call the object
DECLARE  
  v_emp_obj emp_obj;
  v_emp_obj2 executive;
BEGIN
  v_emp_obj := emp_obj(
    last_name => 'ganesh',
    first_name => 'babu',
    email => 'ganesh@yahoo.com',
    phone_number => '9663895384',
    hire_date => sysdate,
    salary => 5000);
  v_emp_obj.print;

  dbms_output.put_line(v_emp_obj.bonus(0.10) );
 
  v_emp_obj2 := executive(
    last_name => 'ganesh',
    first_name => 'babu',
    email => 'ganesh@gmail.com',
    phone_number => '9663895384',
    hire_date => sysdate,
    salary => 5000,
    key_to_washroom => 1);

  v_emp_obj.print;
    
  dbms_output.put_line(v_emp_obj2.bonus(0.10) );
    
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