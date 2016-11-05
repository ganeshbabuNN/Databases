---
Create or replace PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  BEGIN
    --v_what := 'abc';
    RAISE_APPLICATION_ERROR(-6503, 'Weird Error');--Wrong Error name exceptions
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

--- call the procedures
begin
  bad_abc;
end;
/