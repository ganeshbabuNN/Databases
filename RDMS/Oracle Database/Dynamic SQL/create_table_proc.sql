CREATE OR REPLACE PROCEDURE CREATE_TABLE 
(
  P_TABLE_NAME IN VARCHAR2  
, P_COLUMNS IN DBMS_SQL.varchar2a  
) AS 

  v_ddl_string CLOB;
  
  v_index PLS_INTEGER;
  
  -- DBMS_SQL variables
  v_cursor_id NUMBER;
  v_rows_fetched NUMBER;
  
BEGIN

  IF p_table_name IS NULL
    OR p_columns.COUNT = 0
  THEN
    RETURN;
  END IF;
  
  v_ddl_string := 'CREATE TABLE ';
  
  v_ddl_string := v_ddl_string || p_table_name || '( ';
  
  v_index := p_columns.FIRST;
  
  LOOP
    EXIT WHEN v_index IS NULL;
    
    IF v_index != p_columns.FIRST
    THEN
      v_ddl_string := v_ddl_string || ', ';
    END IF;
    
    v_ddl_string := v_ddl_string || p_columns(v_index);
    
    v_index := P_columns.NEXT(v_index);
    
  END LOOP;
  
  v_ddl_string := v_ddl_string || ')';
  
  -- Display the string
  logit( v_ddl_string, 'D');
  
  -- Create the table
  v_cursor_id := DBMS_SQL.open_cursor;
  DBMS_SQL.PARSE(v_cursor_id, v_ddl_string, DBMS_SQL.NATIVE);
  v_rows_fetched := DBMS_SQL.EXECUTE(v_cursor_id);
  DBMS_SQL.CLOSE_CURSOR(v_cursor_id);

END CREATE_TABLE;
/
