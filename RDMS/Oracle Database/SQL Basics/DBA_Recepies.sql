--Database version information
SELECT * FROM v$version;

--Database default information
SELECT username,
       profile,
       default_tablespace,
       temporary_tablespace
  FROM dba_users;

--Database Character Set information
SELECT * FROM nls_database_parameters;

--Get Oracle version
SELECT VALUE
  FROM v$system_parameter
 WHERE name = 'compatible';
 
--Store data case sensitive but to index it case insensitive
/*
Now this ones tricky. Sometime you might querying database on some value 
independent of case. In your query you might do UPPER(..) = UPPER(..) 
on both sides to make it case insensitive. Now in such cases, 
you might want to make your index case insensitive so that they don’t occupy more space. Feel free to experiment with this one.
*/

CREATE TABLE tab (col1 VARCHAR2 (10));
 
CREATE INDEX idx1
   ON tab (UPPER (col1));
 
ANALYZE TABLE a COMPUTE STATISTICS;

--Resizing Tablespace without adding datafile
ALTER DATABASE DATAFILE '/work/oradata/STARTST/STAR02D.dbf' resize 2000M;

--Checking autoextend on/off for Tablespaces
SELECT SUBSTR (file_name, 1, 50), AUTOEXTENSIBLE FROM dba_data_files;
SELECT tablespace_name, AUTOEXTENSIBLE FROM dba_data_files;

--Adding datafile to a tablespace
ALTER TABLESPACE data01 ADD DATAFILE '/work/oradata/STARTST/data01.dbf'
    SIZE 1000M AUTOEXTEND OFF;
    
--Increasing datafile size
ALTER DATABASE DATAFILE '/u01/app/Test_data_01.dbf' RESIZE 2G;

--Find the Actual size of a Database
SELECT SUM (bytes) / 1024 / 1024 / 1024 AS GB FROM dba_data_files;

--Find the size occupied by Data in a Database or Database usage details
SELECT SUM (bytes) / 1024 / 1024 / 1024 AS GB FROM dba_segments;

--Find the size of the SCHEMA/USER
SELECT SUM (bytes / 1024 / 1024) "size_MB"
  FROM dba_segments
 WHERE owner = '&owner';
 
--Last SQL fired by the User on Database
SELECT S.USERNAME || '(' || s.sid || ')-' || s.osuser UNAME,
         s.program || '-' || s.terminal || '(' || s.machine || ')' PROG,
         s.sid || '/' || s.serial# sid,
         s.status "Status",
         p.spid,
         sql_text sqltext
    FROM v$sqltext_with_newlines t, V$SESSION s, v$process p
   WHERE     t.address = s.sql_address
         AND p.addr = s.paddr(+)
         AND t.hash_value = s.sql_hash_value
ORDER BY s.sid, t.piece;


