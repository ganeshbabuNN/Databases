Create or replace PROCEDURE bad_abc
AS
  v_what NUMBER;
  weird_error EXCEPTION;
  pragma EXCEPTION_INIT(WEIRD_ERROR, -06503);
BEGIN
  BEGIN
    --v_what := 'abc';
    RAISE WEIRD_ERROR;
  EXCEPTION
    WHEN WEIRD_ERROR ---control using name exception
    THEN
        v_what := 123;
  END;
  dbms_output.put_line(v_what);
END;
/

--Calling
begin
bad_abc;
end;