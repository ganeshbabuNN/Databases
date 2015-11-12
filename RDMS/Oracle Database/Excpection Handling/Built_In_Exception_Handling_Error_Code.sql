CREATE OR REPLACE PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  BEGIN
    v_what := 'abc';
  EXCEPTION
    WHEN OTHERS
    THEN
      IF SQLCODE = -06502 --error code
      THEN
        v_what := 123;
      ELSE
        RAISE;
      END IF;
  END;
  dbms_output.put_line(v_what);
END;
/

--call
BEGIN
  bad_abc;
END;
/


