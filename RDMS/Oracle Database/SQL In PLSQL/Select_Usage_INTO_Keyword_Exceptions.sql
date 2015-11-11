-- Handling excpetion _no data found
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

-- for too many rows, when can put more handler in the exception block
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

--- Exception handlers
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
  WHEN too_many_rows
  THEN
    NULL;
  WHEN no_data_found
  THEN
    NULL;
END;
/