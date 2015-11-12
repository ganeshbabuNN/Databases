DECLARE
  v_what NUMBER := 'abc'; --not catched in the declarations block
BEGIN
  NULL;
EXCEPTION
  WHEN OTHERS THEN NULL;
END;
/
