-- This exception will not be caught
DECLARE
  v_what NUMBER := 'abc';
BEGIN
  NULL;
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/

-- This exception will be caught
DECLARE
  v_what NUMBER;
BEGIN
  v_what := 'ABC';
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/

