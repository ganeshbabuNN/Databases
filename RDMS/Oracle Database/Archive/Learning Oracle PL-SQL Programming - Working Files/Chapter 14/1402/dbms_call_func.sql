DECLARE
    v_dml_string CLOB;
  
    -- DBMS_SQL variables
    v_cursor_id NUMBER;
    v_rows_fetched NUMBER;
    
    v_input_string VARCHAR2(100);
    v_ret_string VARCHAR2(100);
BEGIN
  v_dml_string := 'BEGIN :v_ret_val := InitCap(:stringval); END;';
  
  v_cursor_id := DBMS_SQL.open_cursor;

  DBMS_SQL.PARSE(v_cursor_id, v_dml_string, DBMS_SQL.NATIVE);

  v_input_string := 'lewis cunningham';
  
  DBMS_SQL.bind_variable( v_cursor_id, 'v_ret_val', v_ret_string, 100);
  DBMS_SQL.bind_variable( v_cursor_id, 'stringval', v_input_string, 100);
  
  v_rows_fetched := DBMS_SQL.EXECUTE(v_cursor_id);
  
  DBMS_SQL.variable_value(v_cursor_id,'v_ret_val',v_ret_string);
  
  logit('InitCapped: ' || v_ret_string, 'D');

  DBMS_SQL.CLOSE_CURSOR(v_cursor_id);
   
END;
/
