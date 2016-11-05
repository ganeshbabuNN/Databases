CREATE OR REPLACE PACKAGE stringer AS

  FUNCTION stringify(p_field IN VARCHAR2) RETURN VARCHAR2;
  FUNCTION stringify(p_field IN NUMBER) RETURN VARCHAR2;
  FUNCTION stringify(p_field IN DATE) RETURN VARCHAR2;

END;
/


CREATE OR REPLACE PACKAGE BODY stringer AS

  FUNCTION stringify(p_field IN VARCHAR2) RETURN VARCHAR2
  IS 
  BEGIN
    RETURN p_field;
  END;
  
  FUNCTION stringify(p_field IN NUMBER) RETURN VARCHAR2
  IS
  BEGIN
    RETURN to_char(p_field);
  END;
  
  FUNCTION stringify(p_field IN DATE) RETURN VARCHAR2
  IS
  BEGIN
    RETURN to_char(p_field, 'DD/MM/YYYY');
  END;

END; 
/
