DECLARE
    v_dml_string CLOB;
  
    -- DBMS_SQL variables
    v_cursor_id NUMBER;
    v_rows_fetched NUMBER;
BEGIN
  v_dml_string := 'BEGIN tababc_dyn_api.delete_row(:param1, :param2, :param3); END;';
  
  v_cursor_id := DBMS_SQL.open_cursor;

  DBMS_SQL.PARSE(v_cursor_id, v_dml_string, DBMS_SQL.NATIVE);

  DBMS_SQL.bind_variable( v_cursor_id, 'param1', 'A');
  DBMS_SQL.bind_variable( v_cursor_id, 'param2', 'B');
  DBMS_SQL.bind_variable( v_cursor_id, 'param3', 1);
  
  v_rows_fetched := DBMS_SQL.EXECUTE(v_cursor_id);
  DBMS_SQL.CLOSE_CURSOR(v_cursor_id);
   
END;
/
