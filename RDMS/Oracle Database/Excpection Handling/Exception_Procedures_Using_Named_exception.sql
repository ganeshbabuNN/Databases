--if i remove the exception block and call the proce
CREATE OR REPLACE PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  v_what := 'abc';
END;
/

--handled using Named excpetions
BEGIN
  bad_abc;
exception
 when value_error
 then
 null;
END;
/
--if i put other exception , 
BEGIN
  bad_abc;
exception
 when no_data_found
 then
 null;
END;
/