--assigning the variable in begin block
CREATE OR REPLACE PROCEDURE bad_abc
AS
  v_what NUMBER;
BEGIN
  v_what := 'abc';
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/

--Now call the proc and the exception is handled now. which is basically hidden.
BEGIN
  bad_abc;
END;
/
