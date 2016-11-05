--Change the sql code with that value_error code and check
create or replace PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  BEGIN
    --v_what := 'abc';
    RAISE VALUE_ERROR;
  EXCEPTION
    WHEN OTHERS
    THEN
      IF SQLCODE = -06503
      THEN
        v_what := 123; --assigning the error statment
      ELSE
        RAISE;
      END IF;
  END;  
  dbms_output.put_line(v_what);
END;
/

--call
begin
bad_abc;
end;