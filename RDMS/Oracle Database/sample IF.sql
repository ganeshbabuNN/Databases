DECLARE
  v_name VARCHAR2(30) := 'Lewis';
BEGIN
  IF v_name = 'LEWIS'
  THEN
    dbms_output.put_line('Name = LEWIS');
  ELSIF v_name = 'Lewis'
  THEN
    dbms_output.put_line('Name = Lewis');
  ELSE
    dbms_output.put_line('I don''t know what name is');
  END IF;
END;
/
