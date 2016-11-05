---lets trying handling expection using procedures
CREATE OR REPLACE PROCEDURE bad_abc
AS
  v_what NUMBER := 'abc';
BEGIN
  NULL;
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/

--if you call now the using AB, excetion was unable to handled coz it was in the declarations sections.
BEGIN
  bad_abc;
END;
/