DECLARE
  v_name VARCHAR2(30) := 'Lewis';
BEGIN

  CASE v_name
  WHEN 'LEWIS'
  THEN
    dbms_output.put_line('Name = LEWIS');
  WHEN 'Lewis'
  THEN
    dbms_output.put_line('Name = Lewis');
  ELSE
    dbms_output.put_line('I don''t know what name is');
  END CASE;
END;
/

