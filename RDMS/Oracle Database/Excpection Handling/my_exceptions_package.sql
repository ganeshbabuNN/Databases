CREATE OR REPLACE 
PACKAGE MY_EXCEPTIONS AS 

  weird_error EXCEPTION;
  pragma EXCEPTION_INIT(WEIRD_ERROR, -20001);

END MY_EXCEPTIONS;
/

CREATE OR REPLACE 
PACKAGE MY_EXCEPTIONS AS 

  weird_error EXCEPTION;
  pragma EXCEPTION_INIT(WEIRD_ERROR, -20001);

  strange_error EXCEPTION;
  pragma EXCEPTION_INIT(STRANGE_ERROR, -20002);

END MY_EXCEPTIONS;
/

create or replace
PROCEDURE bad_abc
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

