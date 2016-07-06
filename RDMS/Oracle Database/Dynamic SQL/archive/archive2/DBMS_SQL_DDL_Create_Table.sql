--- All the variables which are passed as a string are recongised as a binding variables
<<<<<<< HEAD
---Grant Create Table to the UsersGrant Create Table to the Users
=======
---Grant Create Table to the Users
>>>>>>> origin/master

grant  CREATE TABLE  to hr;

grant execute on DBMS_SQL to HR WITH GRANT OPTION;


--procedure for creating the table.
CREATE OR REPLACE PROCEDURE CREATE_TABLE 
(
  P_TABLE_NAME IN VARCHAR2  
, P_COLUMNS IN DBMS_SQL.varchar2a  
--this datatype is array index type varchar as a type which are available in the DBMS_SQL package.
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

---Calling the proc
DECLARE
  v_table_name VARCHAR2(30) := 'TABABC';
  v_columns DBMS_SQL.varchar2a;
BEGIN
  v_columns(1) := 'COL1 VARCHAR2(10)';
  v_columns(5) := 'COL2 VARCHAR2(2)';
  v_columns(10) := 'COL3 NUMBER';  
  CREATE_TABLE(v_table_name, v_columns);  
END;
/


------------------------------
--without AB Calling --just passing the table name
create or replace PROCEDURE CREATE_TABLE 
(
  P_TABLE_NAME IN VARCHAR2  
--this datatype is array index type varchar as a type which are available in the DBMS_SQL package.
) AS 
  P_COLUMNS DBMS_SQL.varchar2a;
  v_ddl_string CLOB;  
  v_index PLS_INTEGER;  
  -- DBMS_SQL variables
  v_cursor_id NUMBER;
  v_rows_fetched NUMBER;  
BEGIN
  P_COLUMNS(1) := 'FIRSTNAME VARCHAR2(10)';
  P_COLUMNS(2) := 'LASTNAME VARCHAR2(2)';
  
  IF p_table_name IS NULL
    OR p_columns.COUNT = 0
  THEN
    RETURN;
  END IF;
  v_ddl_string := 'CREATE TABLE ';  
  v_ddl_string := v_ddl_string || 'IV_'||p_table_name || '( ';  
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
