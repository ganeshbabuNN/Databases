--for deleting

--spec
create or replace
PACKAGE tababc_dyn_api IS
  PROCEDURE delete_row(
    p_col1 IN tababc.col1%TYPE,
    p_col2 IN tababc.col2%TYPE,
    p_col3 IN tababc.col3%TYPE
  );  
END;
/

--body
create or replace
PACKAGE BODY tababc_dyn_api IS
  PROCEDURE delete_row(
    p_col1 IN tababc.col1%TYPE,
    p_col2 IN tababc.col2%TYPE,
    p_col3 IN tababc.col3%TYPE
  ) 
  AS 
    v_dml_string CLOB;  
    -- DBMS_SQL variables
    v_cursor_id NUMBER;
    v_rows_fetched NUMBER;  
  BEGIN
    v_cursor_id := DBMS_SQL.open_cursor;    
    v_dml_string := 'DELETE FROM tababc ';
    v_dml_string := v_dml_string || 
               'WHERE col1 = :col1 AND 
                      col2 = :col2 AND
                      col3 = :col3 ';
      -- Display the string
    logit( v_dml_string, 'D'); 
    DBMS_SQL.PARSE(v_cursor_id, v_dml_string, DBMS_SQL.NATIVE);
    DBMS_SQL.bind_variable( v_cursor_id, 'col1', p_col1);
    DBMS_SQL.bind_variable( v_cursor_id, 'col2', p_col2);
    DBMS_SQL.bind_variable( v_cursor_id, 'col3', p_col3);  
    v_rows_fetched := DBMS_SQL.EXECUTE(v_cursor_id);
    DBMS_SQL.CLOSE_CURSOR(v_cursor_id);    
    COMMIT;
    logit( 'Rows Fetched: ' || to_char(v_rows_fetched), 'D');
  END; 
END tababc_dyn_api;
/

--call the delete procedures
BEGIN
  tababc_dyn_api.delete_row('G', 'G', 3);
END;
/
