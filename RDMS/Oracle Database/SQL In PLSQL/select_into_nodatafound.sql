DECLARE
  v_test VARCHAR2(10);
BEGIN
  SELECT user
    INTO v_test
	FROM DUAL
  WHERE dummy = 'Y';
EXCEPTION
  WHEN no_data_found
  THEN
    NULL;
END;
/

