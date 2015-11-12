--change exception block, in the error code
create or replace PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  BEGIN
    --v_what := 'abc';
    RAISE VALUE_ERROR;--Raising the value_error directly
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

--call
begin
bad_abc;
end;