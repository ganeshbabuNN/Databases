--Check if a table exists in the current database schema
SELECT table_name
  FROM user_tables
 WHERE table_name = 'TABLE_NAME';

--Check if a column exists in a table
SELECT column_name AS FOUND
  FROM user_tab_cols
 WHERE table_name = 'TABLE_NAME' AND column_name = 'COLUMN_NAME';
 
SELECT column_name AS FOUND
  FROM user_tab_cols
 WHERE table_name = 'EMPLOYEE' AND column_name = 'ENAME'; 

--Showing the table structure 
SELECT DBMS_METADATA.get_ddl ('TABLE', 'TABLE_NAME', 'USER_NAME') FROM DUAL;
SELECT DBMS_METADATA.get_ddl ('TABLE', 'EMPLOYEE', 'GANESH') FROM DUAL;

--Getting current schema
SELECT SYS_CONTEXT ('userenv', 'current_schema') FROM DUAL;

--Changing current schema
ALTER SESSION SET CURRENT_SCHEMA = new_schema;

