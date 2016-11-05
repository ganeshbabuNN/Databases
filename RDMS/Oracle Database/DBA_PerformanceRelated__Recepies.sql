--CPU usage of the USER
SELECT ss.username, se.SID, VALUE / 100 cpu_usage_seconds
    FROM v$session ss, v$sesstat se, v$statname sn
   WHERE     se.STATISTIC# = sn.STATISTIC#
         AND NAME LIKE '%CPU used by this session%'
         AND se.SID = ss.SID
         AND ss.status = 'ACTIVE'
         AND ss.username IS NOT NULL
ORDER BY VALUE DESC;

--Long Query progress in database
SELECT a.sid,
         a.serial#,
         b.username,
         opname OPERATION,
         target OBJECT,
         TRUNC (elapsed_seconds, 5) "ET (s)",
         TO_CHAR (start_time, 'HH24:MI:SS') start_time,
         ROUND ( (sofar / totalwork) * 100, 2) "COMPLETE (%)"
    FROM v$session_longops a, v$session b
   WHERE     a.sid = b.sid
         AND b.username NOT IN ('SYS', 'SYSTEM')
         AND totalwork > 0
ORDER BY elapsed_seconds;

--Get current session id, process id, client process id?
SELECT b.sid,
       b.serial#,
       a.spid processid,
       b.process clientpid
  FROM v$process a, v$session b
 WHERE a.addr = b.paddr AND b.audsid = USERENV ('sessionid');

/*
V$SESSION.SID AND V$SESSION.SERIAL# is database process id
V$PROCESS.SPID is shadow process id on this database server
V$SESSION.PROCESS is client PROCESS ID, ON windows it IS :
separated THE FIRST # IS THE PROCESS ID ON THE client AND 2nd one IS THE THREAD id
*/

--Last SQL Fired from particular Schema or Table:
SELECT CREATED, TIMESTAMP, last_ddl_time
  FROM all_objects
 WHERE     OWNER = 'MYSCHEMA' ---schema table
       AND OBJECT_TYPE = 'TABLE'
       AND OBJECT_NAME = 'EMPLOYEE_TABLE';--name

--Find Top 10 SQL by reads per execution
SELECT *
  FROM (  SELECT ROWNUM,
                 SUBSTR (a.sql_text, 1, 200) sql_text,
                 TRUNC (
                    a.disk_reads / DECODE (a.executions, 0, 1, a.executions))
                    reads_per_execution,
                 a.buffer_gets,
                 a.disk_reads,
                 a.executions,
                 a.sorts,
                 a.address
            FROM v$sqlarea a
        ORDER BY 3 DESC)
 WHERE ROWNUM < 10;
 
 --Oracle SQL query over the view that shows actual Oracle connections
 SELECT osuser,
         username,
         machine,
         program
    FROM v$session
ORDER BY osuser;

--Oracle SQL query that show the opened connections group by the program that opens the connection.
SELECT program application, COUNT (program) Numero_Sesiones
    FROM v$session
GROUP BY program
ORDER BY Numero_Sesiones DESC;
 
--Oracle SQL query that shows Oracle users connected and the sessions number for user
SELECT username Usuario_Oracle, COUNT (username) Numero_Sesiones
    FROM v$session
GROUP BY username
ORDER BY Numero_Sesiones DESC;

--Get number of objects per owner
SELECT owner, COUNT (owner) number_of_objects
    FROM dba_objects
GROUP BY owner
ORDER BY number_of_objects DESC;

