Create or Replace PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  BEGIN
    --v_what := 'abc';
    RAISE MY_EXCEPTIONS.weird_error;
  EXCEPTION
    WHEN MY_EXCEPTIONS.WEIRD_ERROR
    THEN
        v_what := 123;
  END;
  dbms_output.put_line(v_what);
EXCEPTION
  WHEN OTHERS
  THEN
    logit_and_raise(sqlerrm);
END;
/