DECLARE
  v_test VARCHAR2(10);
BEGIN
  SELECT USER
    INTO v_test
    FROM (
      SELECT user
      FROM DUAL
      UNION ALL
      SELECT user
      FROM DUAL);
EXCEPTION
  WHEN no_data_found
  THEN
    NULL;
END;
/

