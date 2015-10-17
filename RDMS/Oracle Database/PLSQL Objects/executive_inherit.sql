
create or replace
TYPE executive UNDER emp_obj
(
  key_to_washroom NUMBER,
  
  OVERRIDING MEMBER PROCEDURE print,
  
  OVERRIDING MEMBER FUNCTION bonus(
    p_percent IN NUMBER )
    RETURN NUMBER
)
/

CREATE OR REPLACE
TYPE BODY EXECUTIVE AS

  OVERRIDING MEMBER PROCEDURE print AS
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Last Name: ' || SELF.last_name);
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

