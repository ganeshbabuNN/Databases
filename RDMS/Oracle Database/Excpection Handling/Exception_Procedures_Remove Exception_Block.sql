--if i remove the exception block and call the proce
CREATE OR REPLACE PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  v_what := 'abc';
END;
/

--the AB will unable to handle this exception 
BEGIN
  bad_abc;
END;
/