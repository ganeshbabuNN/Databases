Create or replace PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  BEGIN
    --v_what := 'abc';
    RAISE -06502; ---adding the error code in Raise keyword
  EXCEPTION
    WHEN OTHERS
    THEN
      IF SQLCODE = -06502
      THEN
        v_what := 123;
      ELSE
        RAISE;
      END IF;
  END;  
  dbms_output.put_line(v_what);
END;
/

This can be handled by passing value using the raise application error