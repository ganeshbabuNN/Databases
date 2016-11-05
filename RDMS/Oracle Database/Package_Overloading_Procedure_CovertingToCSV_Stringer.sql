---converting to CSV
--spec
CREATE OR REPLACE PACKAGE stringer AS
  PROCEDURE set_format_mask( p_format_mask IN VARCHAR2 );
  FUNCTION stringify(p_field IN VARCHAR2) RETURN VARCHAR2;
  FUNCTION stringify(p_field IN NUMBER) RETURN VARCHAR2;
  FUNCTION stringify(p_field IN DATE) RETURN VARCHAR2;

  FUNCTION stringify_csv(p_field IN VARCHAR2) RETURN VARCHAR2;
  FUNCTION stringify_csv(p_field IN NUMBER) RETURN VARCHAR2;
  FUNCTION stringify_csv(p_field IN DATE) RETURN VARCHAR2;

END; 
/

--body
CREATE OR REPLACE PACKAGE BODY stringer AS
  g_format_mask VARCHAR2(32000) := 'DD/MM/YYYY';
  PROCEDURE set_format_mask( p_format_mask IN VARCHAR2 )
  IS
  BEGIN
    g_format_mask := p_format_mask;
  END;
  
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
    RETURN to_char(p_field, g_format_mask);
  END;

  FUNCTION stringify_csv(p_field IN VARCHAR2) RETURN VARCHAR2
  IS 
  BEGIN
    RETURN '"' || stringify(p_field) || '",';
  END;
  
  FUNCTION stringify_csv(p_field IN NUMBER) RETURN VARCHAR2
  IS
  BEGIN
    RETURN stringify(p_field) || ',';
  END;
  
  FUNCTION stringify_csv(p_field IN DATE) RETURN VARCHAR2
  IS
  BEGIN
    RETURN stringify(p_field) || ',';
  END;
END; 
/