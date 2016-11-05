DECLARE
  v_what NUMBER;
BEGIN
  v_what := 'ABC'; --IF declared in the definations block
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/