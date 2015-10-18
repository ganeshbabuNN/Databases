Rem
Rem $Header: sh_main.sql 29-aug-2001.09:10:41 ahunold Exp $
Rem
Rem sh_main.sql
Rem
Rem Copyright (c) 2001, Oracle Corporation.  All rights reserved.  
Rem
Rem    NAME
Rem      sh_main.sql - Main schema creation and load script 
Rem
Rem    DESCRIPTION
Rem      SH is the Sales History schema of the Oracle 9i Sample
Rem    Schemas
Rem
Rem    NOTES
Rem     CAUTION: use absolute pathnames as parameters 5 and 6.
Rem     Example (UNIX) echo $ORACLE_HOME/demo/schema/sales_history      
Rem     Please make sure that parameters 5 and 6 are specified
Rem     INCLUDING the trailing directory delimiter, since the
Rem     directory parameters and the filenames are concatenated 
Rem     without adding any delimiters.
Rem     Run this as SYS or SYSTEM
Rem
Rem    MODIFIED   (MM/DD/YY)
Rem     ahunold    08/28/01 - roles
Rem     ahunold    07/13/01 - NLS Territory
Rem     ahunold    04/13/01 - spool, notes
Rem     ahunold    04/10/01 - flexible log and data paths
Rem     ahunold    03/28/01 - spool
Rem     ahunold    03/23/01 - absolute path names
Rem     ahunold    03/14/01 - prompts
Rem     ahunold    03/09/01 - privileges
Rem     hbaer      03/01/01 - changed loading from COSTS table from
Rem               SQL*Loader to external table with GROUP BY
Rem               Added also CREATE DIRECTORY privilege
Rem

SET ECHO OFF

PROMPT 
PROMPT specify password for SH as parameter 1:
DEFINE pass     = &1
PROMPT 
PROMPT specify default tablespeace for SH as parameter 2:
DEFINE tbs      = &2
PROMPT 
PROMPT specify temporary tablespace for SH as parameter 3:
DEFINE ttbs     = &3
PROMPT 
PROMPT specify password for SYS as parameter 4:
DEFINE pass_sys = &4
PROMPT
PROMPT specify directory path for the data files as parameter 5:
DEFINE data_dir = &5
PROMPT
PROMPT writeable directory path for the log files as parameter 6:
DEFINE log_dir = &6
PROMPT

ALTER SESSION SET NLS_LANGUAGE='American';

-- The first dot in the spool command below is 
-- the SQL*Plus concatenation character

DEFINE spool_file = &log_dir.sh_main.log
SPOOL &spool_file

-- Dropping the user with all its objects

DROP USER sh CASCADE;

REM =======================================================
REM create user
REM THIS WILL ONLY WORK IF APPROPRIATE TS ARE PRESENT
REM =======================================================

CREATE USER sh IDENTIFIED BY &pass;

ALTER USER sh DEFAULT TABLESPACE &tbs
 QUOTA UNLIMITED ON &tbs;
ALTER USER sh TEMPORARY TABLESPACE &ttbs;

CREATE ROLE sales_history_role;

GRANT CREATE ANY DIRECTORY     TO sales_history_role;
GRANT DROP ANY DIRECTORY       TO sales_history_role;
GRANT CREATE DIMENSION         TO sales_history_role;
GRANT QUERY REWRITE            TO sales_history_role;
GRANT CREATE MATERIALIZED VIEW TO sales_history_role;

GRANT CONNECT               TO sh;
GRANT RESOURCE              TO sh;
GRANT sales_history_role    TO sh;
GRANT select_catalog_role   TO sh;

ALTER USER sh DEFAULT ROLE ALL;

rem   ALTER USER sh GRANT CONNECT THROUGH olapsvr;

REM =======================================================
REM grants for sys schema
REM =======================================================

CONNECT sys/&pass_sys AS SYSDBA;
GRANT execute ON sys.dbms_stats TO sh;
 
REM =======================================================
REM create sh schema objects (sales history - star schema)
REM =======================================================

CONNECT sh/&pass

ALTER SESSION SET NLS_LANGUAGE=American;
ALTER SESSION SET NLS_TERRITORY=America;

PROMPT creating tables ...
@&data_dir.sh_cre.sql

PROMPT inserting rows tables ...
@&data_dir.sh_pop1.sql
@&data_dir.sh_pop2.sql

PROMPT loading data ...
@&data_dir.sh_pop3.sql &pass &data_dir &log_dir

PROMPT creating indexes ...
@&data_dir.sh_idx.sql

PROMPT adding constraints ...
@&data_dir.sh_cons.sql

PROMPT creating dimensions and hierarchies ...
@&data_dir.sh_hiera.sql

PROMPT creating materialized views ...
@&data_dir.sh_cremv.sql     

PROMPT gathering statistics ...
@&data_dir.sh_analz.sql

PROMPT adding comments ...
@&data_dir.sh_comnt.sql

PROMPT creating PLAN_TABLE ...
@?/rdbms/admin/utlxplan.sql

PROMPT creating REWRITE_TABLE ...
@?/rdbms/admin/utlxrw.sql

PROMPT creating MV_CAPABILITIES_TABLE ...
@?/rdbms/admin/utlxmv.sql

COMMIT;                

spool off