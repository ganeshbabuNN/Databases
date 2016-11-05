create or replace
PROCEDURE bad_abc
AS
  v_what NUMBER;

  weird_error EXCEPTION;
  pragma EXCEPTION_INIT(WEIRD_ERROR, -20001);

BEGIN
  BEGIN
    --v_what := 'abc';
    RAISE_APPLICATION_ERROR(-20001, 'Weird Error');
  EXCEPTION
    WHEN WEIRD_ERROR
    THEN
        v_what := 123;
  END;

  dbms_output.put_line(v_what);
END;
/

