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
