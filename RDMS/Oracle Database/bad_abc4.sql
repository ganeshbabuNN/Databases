CREATE OR REPLACE PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  BEGIN
    v_what := 'abc';
  EXCEPTION
    WHEN VALUE_ERROR
    THEN
      v_what := 123;
  END;
  
  dbms_output.put_line(v_what);
END;
/

BEGIN
  bad_abc;
END;
/
