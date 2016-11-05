create or replace
PROCEDURE bad_abc
AS
  v_what NUMBER;

  weird_error EXCEPTION;
  pragma EXCEPTION_INIT(WEIRD_ERROR, -06503);

BEGIN
  BEGIN
    --v_what := 'abc';
    RAISE VALUE_ERROR;
  EXCEPTION
    WHEN OTHERS
    THEN
      IF SQLCODE = -06503
      THEN
        v_what := 123;
      ELSE
        RAISE;
      END IF;
  END;
  
  dbms_output.put_line(v_what);
END;
/

