DECLARE
  v_message CONSTANT VARCHAR2(100):= 'Hello World' ;
  v_date DATE;
BEGIN
  DBMS_OUTPUT.put_line(v_message);
END;
/