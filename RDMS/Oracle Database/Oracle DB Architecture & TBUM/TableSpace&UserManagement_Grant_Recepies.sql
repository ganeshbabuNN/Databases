-- USER SQL
CREATE USER ganesh1 IDENTIFIED BY Ga55word ;

-- ROLES
GRANT "OLAP_XS_ADMIN" TO ganesh1 WITH ADMIN OPTION;
GRANT "WFS_USR_ROLE" TO ganesh1 WITH ADMIN OPTION;
GRANT "DELETE_CATALOG_ROLE" TO ganesh1 WITH ADMIN OPTION;
GRANT "HS_ADMIN_SELECT_ROLE" TO ganesh1 WITH ADMIN OPTION;
GRANT "CWM_USER" TO ganesh1 WITH ADMIN OPTION;
GRANT "SPATIAL_WFS_ADMIN" TO ganesh1 WITH ADMIN OPTION;
GRANT "OLAP_DBA" TO ganesh1 WITH ADMIN OPTION;
GRANT "OWB$CLIENT" TO ganesh1 WITH ADMIN OPTION;
GRANT "RESOURCE" TO ganesh1 WITH ADMIN OPTION;
GRANT "APEX_ADMINISTRATOR_ROLE" TO ganesh1 WITH ADMIN OPTION;
GRANT "OWB_DESIGNCENTER_VIEW" TO ganesh1 WITH ADMIN OPTION;
GRANT "CTXAPP" TO ganesh1 WITH ADMIN OPTION;
GRANT "SPATIAL_CSW_ADMIN" TO ganesh1 WITH ADMIN OPTION;
GRANT "GATHER_SYSTEM_STATISTICS" TO ganesh1 WITH ADMIN OPTION;
GRANT "AUTHENTICATEDUSER" TO ganesh1 WITH ADMIN OPTION;
GRANT "CONNECT" TO ganesh1 WITH ADMIN OPTION;
GRANT "HS_ADMIN_EXECUTE_ROLE" TO ganesh1 WITH ADMIN OPTION;
GRANT "LOGSTDBY_ADMINISTRATOR" TO ganesh1 WITH ADMIN OPTION;
GRANT "JAVADEBUGPRIV" TO ganesh1 WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES_WITH_PUBLIC" TO ganesh1 WITH ADMIN OPTION;
GRANT "XDBADMIN" TO ganesh1 WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES_OVER_HTTP" TO ganesh1 WITH ADMIN OPTION;
GRANT "EXP_FULL_DATABASE" TO ganesh1 WITH ADMIN OPTION;
GRANT "CSW_USR_ROLE" TO ganesh1 WITH ADMIN OPTION;
GRANT "OLAPI_TRACE_USER" TO ganesh1 WITH ADMIN OPTION;
GRANT "JAVAIDPRIV" TO ganesh1 WITH ADMIN OPTION;
GRANT "DBFS_ROLE" TO ganesh1 WITH ADMIN OPTION;
GRANT "ADM_PARALLEL_EXECUTE_TASK" TO ganesh1 WITH ADMIN OPTION;
GRANT "AQ_ADMINISTRATOR_ROLE" TO ganesh1 WITH ADMIN OPTION;
GRANT "JAVA_DEPLOY" TO ganesh1 WITH ADMIN OPTION;
GRANT "OEM_MONITOR" TO ganesh1 WITH ADMIN OPTION;
GRANT "XDB_WEBSERVICES" TO ganesh1 WITH ADMIN OPTION;
GRANT "JAVAUSERPRIV" TO ganesh1 WITH ADMIN OPTION;
GRANT "MGMT_USER" TO ganesh1 WITH ADMIN OPTION;
GRANT "OWB_USER" TO ganesh1 WITH ADMIN OPTION;
GRANT "JAVA_ADMIN" TO ganesh1 WITH ADMIN OPTION;
GRANT "JMXSERVER" TO ganesh1 WITH ADMIN OPTION;
GRANT "EXECUTE_CATALOG_ROLE" TO ganesh1 WITH ADMIN OPTION;
GRANT "SCHEDULER_ADMIN" TO ganesh1 WITH ADMIN OPTION;
GRANT "DATAPUMP_IMP_FULL_DATABASE" TO ganesh1 WITH ADMIN OPTION;
GRANT "WM_ADMIN_ROLE" TO ganesh1 WITH ADMIN OPTION;
GRANT "ORDADMIN" TO ganesh1 WITH ADMIN OPTION;
GRANT "AQ_USER_ROLE" TO ganesh1 WITH ADMIN OPTION;
GRANT "DATAPUMP_EXP_FULL_DATABASE" TO ganesh1 WITH ADMIN OPTION;
GRANT "SELECT_CATALOG_ROLE" TO ganesh1 WITH ADMIN OPTION;
GRANT "RECOVERY_CATALOG_OWNER" TO ganesh1 WITH ADMIN OPTION;
GRANT "OLAP_USER" TO ganesh1 WITH ADMIN OPTION;
GRANT "DBA" TO ganesh1 WITH ADMIN OPTION;
GRANT "JAVASYSPRIV" TO ganesh1 WITH ADMIN OPTION;
GRANT "XDB_SET_INVOKER" TO ganesh1 WITH ADMIN OPTION;
GRANT "IMP_FULL_DATABASE" TO ganesh1 WITH ADMIN OPTION;
GRANT "HS_ADMIN_ROLE" TO ganesh1 WITH ADMIN OPTION;
GRANT "EJBCLIENT" TO ganesh1 WITH ADMIN OPTION;
GRANT "OEM_ADVISOR" TO ganesh1 WITH ADMIN OPTION;

-- SYSTEM PRIVILEGES
GRANT ALTER TABLESPACE TO ganesh1 ;
GRANT DROP ANY TRIGGER TO ganesh1 ;
GRANT CREATE USER TO ganesh1 ;
GRANT CREATE ANY OUTLINE TO ganesh1 ;
GRANT FLASHBACK ANY TABLE TO ganesh1 ;
GRANT ALTER ANY SEQUENCE TO ganesh1 ;
GRANT ALTER ANY LIBRARY TO ganesh1 ;
GRANT ADMINISTER SQL MANAGEMENT OBJECT TO ganesh1 ;
GRANT CREATE MINING MODEL TO ganesh1 ;
GRANT UPDATE ANY TABLE TO ganesh1 ;
GRANT UPDATE ANY CUBE TO ganesh1 ;
GRANT CREATE TRIGGER TO ganesh1 ;
GRANT DROP ANY EVALUATION CONTEXT TO ganesh1 ;
GRANT DROP PROFILE TO ganesh1 ;
GRANT CREATE TABLESPACE TO ganesh1 ;
GRANT DEBUG CONNECT SESSION TO ganesh1 ;
GRANT DROP ANY DIRECTORY TO ganesh1 ;
GRANT CREATE ASSEMBLY TO ganesh1 ;
GRANT SELECT ANY CUBE TO ganesh1 ;
GRANT CREATE SEQUENCE TO ganesh1 ;
GRANT ON COMMIT REFRESH TO ganesh1 ;
GRANT SELECT ANY SEQUENCE TO ganesh1 ;
GRANT CREATE ANY SQL PROFILE TO ganesh1 ;
GRANT DROP ANY SQL PROFILE TO ganesh1 ;
GRANT ADMINISTER ANY SQL TUNING SET TO ganesh1 ;
GRANT ADVISOR TO ganesh1 ;
GRANT ALTER ANY MINING MODEL TO ganesh1 ;
GRANT EXECUTE ANY OPERATOR TO ganesh1 ;
GRANT ALTER PROFILE TO ganesh1 ;
GRANT EXECUTE ANY TYPE TO ganesh1 ;
GRANT CREATE ANY DIRECTORY TO ganesh1 ;
GRANT CREATE TABLE TO ganesh1 ;
GRANT CREATE ANY INDEX TO ganesh1 ;
GRANT ADMINISTER RESOURCE MANAGER TO ganesh1 ;
GRANT BECOME USER TO ganesh1 ;
GRANT MANAGE TABLESPACE TO ganesh1 ;
GRANT DROP ANY MINING MODEL TO ganesh1 ;
GRANT EXECUTE ASSEMBLY TO ganesh1 ;
GRANT SELECT ANY TABLE TO ganesh1 ;
GRANT DROP ROLLBACK SEGMENT TO ganesh1 ;
GRANT CREATE OPERATOR TO ganesh1 ;
GRANT ALTER ANY CUBE TO ganesh1 ;
GRANT ALTER PUBLIC DATABASE LINK TO ganesh1 ;
GRANT CREATE ANY PROCEDURE TO ganesh1 ;
GRANT CREATE ANY CUBE TO ganesh1 ;
GRANT DROP ANY INDEXTYPE TO ganesh1 ;
GRANT SELECT ANY MINING MODEL TO ganesh1 ;
GRANT EXECUTE ANY CLASS TO ganesh1 ;
GRANT CREATE ANY MATERIALIZED VIEW TO ganesh1 ;
GRANT SELECT ANY TRANSACTION TO ganesh1 ;
GRANT ANALYZE ANY DICTIONARY TO ganesh1 ;
GRANT CREATE EXTERNAL JOB TO ganesh1 ;
GRANT INSERT ANY TABLE TO ganesh1 ;
GRANT CREATE LIBRARY TO ganesh1 ;
GRANT GRANT ANY OBJECT PRIVILEGE TO ganesh1 ;
GRANT CREATE JOB TO ganesh1 ;
GRANT CREATE ANY OPERATOR TO ganesh1 ;
GRANT ALTER ANY RULE TO ganesh1 ;
GRANT CREATE ANY LIBRARY TO ganesh1 ;
GRANT CREATE ANY SEQUENCE TO ganesh1 ;
GRANT DROP PUBLIC SYNONYM TO ganesh1 ;
GRANT CREATE CLUSTER TO ganesh1 ;
GRANT FORCE ANY TRANSACTION TO ganesh1 ;
GRANT UPDATE ANY CUBE DIMENSION TO ganesh1 ;
GRANT CREATE EVALUATION CONTEXT TO ganesh1 ;
GRANT CREATE ANY CUBE BUILD PROCESS TO ganesh1 ;
GRANT DROP ANY OPERATOR TO ganesh1 ;
GRANT DROP USER TO ganesh1 ;
GRANT EXECUTE ANY INDEXTYPE TO ganesh1 ;
GRANT ALTER ANY EDITION TO ganesh1 ;
GRANT LOCK ANY TABLE TO ganesh1 ;
GRANT DROP ANY TYPE TO ganesh1 ;
GRANT CHANGE NOTIFICATION TO ganesh1 ;
GRANT CREATE ANY DIMENSION TO ganesh1 ;
GRANT DROP ANY DIMENSION TO ganesh1 ;
GRANT READ ANY FILE GROUP TO ganesh1 ;
GRANT CREATE ANY RULE TO ganesh1 ;
GRANT ALTER ANY ASSEMBLY TO ganesh1 ;
GRANT EXEMPT IDENTITY POLICY TO ganesh1 ;
GRANT ALTER ROLLBACK SEGMENT TO ganesh1 ;
GRANT CREATE RULE TO ganesh1 ;
GRANT CREATE ANY VIEW TO ganesh1 ;
GRANT SYSOPER TO ganesh1 ;
GRANT CREATE PROCEDURE TO ganesh1 ;
GRANT INSERT ANY MEASURE FOLDER TO ganesh1 ;
GRANT SYSDBA TO ganesh1 ;
GRANT ANALYZE ANY TO ganesh1 ;
GRANT ALTER ANY TYPE TO ganesh1 ;
GRANT DROP ANY EDITION TO ganesh1 ;
GRANT CREATE ANY TRIGGER TO ganesh1 ;
GRANT MANAGE ANY FILE GROUP TO ganesh1 ;
GRANT DROP ANY RULE TO ganesh1 ;
GRANT CREATE DIMENSION TO ganesh1 ;
GRANT CREATE ROLLBACK SEGMENT TO ganesh1 ;
GRANT FLASHBACK ARCHIVE ADMINISTER TO ganesh1 ;
GRANT ALTER ANY RULE SET TO ganesh1 ;
GRANT DROP ANY SEQUENCE TO ganesh1 ;
GRANT DROP ANY TABLE TO ganesh1 ;
GRANT CREATE CUBE DIMENSION TO ganesh1 ;
GRANT EXECUTE ANY RULE TO ganesh1 ;
GRANT DROP ANY LIBRARY TO ganesh1 ;
GRANT EXECUTE ANY PROCEDURE TO ganesh1 ;
GRANT DROP ANY VIEW TO ganesh1 ;
GRANT DROP ANY CONTEXT TO ganesh1 ;
GRANT FORCE TRANSACTION TO ganesh1 ;
GRANT CREATE ANY JOB TO ganesh1 ;
GRANT DROP ANY ROLE TO ganesh1 ;
GRANT DELETE ANY CUBE DIMENSION TO ganesh1 ;
GRANT DROP ANY CLUSTER TO ganesh1 ;
GRANT UPDATE ANY CUBE BUILD PROCESS TO ganesh1 ;
GRANT CREATE ANY INDEXTYPE TO ganesh1 ;
GRANT ADMINISTER SQL TUNING SET TO ganesh1 ;
GRANT EXECUTE ANY PROGRAM TO ganesh1 ;
GRANT DROP ANY ASSEMBLY TO ganesh1 ;
GRANT ALTER DATABASE LINK TO ganesh1 ;
GRANT GRANT ANY PRIVILEGE TO ganesh1 ;
GRANT ALTER ANY PROCEDURE TO ganesh1 ;
GRANT MERGE ANY VIEW TO ganesh1 ;
GRANT CREATE ANY EVALUATION CONTEXT TO ganesh1 ;
GRANT ALTER ANY OPERATOR TO ganesh1 ;
GRANT ALTER ANY CUBE DIMENSION TO ganesh1 ;
GRANT COMMENT ANY MINING MODEL TO ganesh1 ;
GRANT ALTER ANY ROLE TO ganesh1 ;
GRANT EXECUTE ANY ASSEMBLY TO ganesh1 ;
GRANT CREATE CUBE BUILD PROCESS TO ganesh1 ;
GRANT EXECUTE ANY RULE SET TO ganesh1 ;
GRANT ALTER ANY TRIGGER TO ganesh1 ;
GRANT UNDER ANY TABLE TO ganesh1 ;
GRANT BACKUP ANY TABLE TO ganesh1 ;
GRANT CREATE SYNONYM TO ganesh1 ;
GRANT DROP ANY CUBE BUILD PROCESS TO ganesh1 ;
GRANT DROP ANY CUBE TO ganesh1 ;
GRANT ALTER DATABASE TO ganesh1 ;
GRANT ALTER ANY TABLE TO ganesh1 ;
GRANT CREATE VIEW TO ganesh1 ;
GRANT EXECUTE ANY LIBRARY TO ganesh1 ;
GRANT CREATE RULE SET TO ganesh1 ;
GRANT EXEMPT ACCESS POLICY TO ganesh1 ;
GRANT CREATE ANY CLUSTER TO ganesh1 ;
GRANT DROP ANY INDEX TO ganesh1 ;
GRANT CREATE TYPE TO ganesh1 ;
GRANT EXECUTE ANY EVALUATION CONTEXT TO ganesh1 ;
GRANT ALTER RESOURCE COST TO ganesh1 ;
GRANT ALTER ANY CLUSTER TO ganesh1 ;
GRANT CREATE PUBLIC SYNONYM TO ganesh1 ;
GRANT ALTER ANY INDEX TO ganesh1 ;
GRANT CREATE ANY MINING MODEL TO ganesh1 ;
GRANT GLOBAL QUERY REWRITE TO ganesh1 ;
GRANT CREATE ANY RULE SET TO ganesh1 ;
GRANT CREATE MEASURE FOLDER TO ganesh1 ;
GRANT DROP ANY CUBE DIMENSION TO ganesh1 ;
GRANT CREATE ROLE TO ganesh1 ;
GRANT RESTRICTED SESSION TO ganesh1 ;
GRANT DROP ANY PROCEDURE TO ganesh1 ;
GRANT ALTER USER TO ganesh1 ;
GRANT CREATE ANY CONTEXT TO ganesh1 ;
GRANT CREATE ANY SYNONYM TO ganesh1 ;
GRANT CREATE ANY CUBE DIMENSION TO ganesh1 ;
GRANT ALTER ANY OUTLINE TO ganesh1 ;
GRANT ENQUEUE ANY QUEUE TO ganesh1 ;
GRANT CREATE ANY TABLE TO ganesh1 ;
GRANT SELECT ANY CUBE DIMENSION TO ganesh1 ;
GRANT ALTER ANY EVALUATION CONTEXT TO ganesh1 ;
GRANT CREATE SESSION TO ganesh1 ;
GRANT DEQUEUE ANY QUEUE TO ganesh1 ;
GRANT QUERY REWRITE TO ganesh1 ;
GRANT EXPORT FULL DATABASE TO ganesh1 ;
GRANT CREATE PUBLIC DATABASE LINK TO ganesh1 ;
GRANT RESUMABLE TO ganesh1 ;
GRANT UNLIMITED TABLESPACE TO ganesh1 ;
GRANT UNDER ANY VIEW TO ganesh1 ;
GRANT DROP ANY OUTLINE TO ganesh1 ;
GRANT CREATE ANY EDITION TO ganesh1 ;
GRANT CREATE ANY ASSEMBLY TO ganesh1 ;
GRANT ALTER ANY INDEXTYPE TO ganesh1 ;
GRANT DROP ANY MATERIALIZED VIEW TO ganesh1 ;
GRANT CREATE INDEXTYPE TO ganesh1 ;
GRANT ALTER ANY SQL PROFILE TO ganesh1 ;
GRANT ALTER SYSTEM TO ganesh1 ;
GRANT DROP ANY SYNONYM TO ganesh1 ;
GRANT GRANT ANY ROLE TO ganesh1 ;
GRANT CREATE MATERIALIZED VIEW TO ganesh1 ;
GRANT DROP ANY RULE SET TO ganesh1 ;
GRANT MANAGE SCHEDULER TO ganesh1 ;
GRANT DROP TABLESPACE TO ganesh1 ;
GRANT SELECT ANY DICTIONARY TO ganesh1 ;
GRANT IMPORT FULL DATABASE TO ganesh1 ;
GRANT DELETE ANY MEASURE FOLDER TO ganesh1 ;
GRANT DELETE ANY TABLE TO ganesh1 ;
GRANT AUDIT SYSTEM TO ganesh1 ;
GRANT ALTER ANY MATERIALIZED VIEW TO ganesh1 ;
GRANT DEBUG ANY PROCEDURE TO ganesh1 ;
GRANT CREATE PROFILE TO ganesh1 ;
GRANT CREATE ANY MEASURE FOLDER TO ganesh1 ;
GRANT UNDER ANY TYPE TO ganesh1 ;
GRANT COMMENT ANY TABLE TO ganesh1 ;
GRANT ALTER ANY DIMENSION TO ganesh1 ;
GRANT CREATE ANY TYPE TO ganesh1 ;
GRANT DROP ANY MEASURE FOLDER TO ganesh1 ;
GRANT DROP PUBLIC DATABASE LINK TO ganesh1 ;
GRANT CREATE CUBE TO ganesh1 ;
GRANT CREATE DATABASE LINK TO ganesh1 ;
GRANT INSERT ANY CUBE DIMENSION TO ganesh1 ;
GRANT ALTER SESSION TO ganesh1 ;
GRANT MANAGE ANY QUEUE TO ganesh1 ;
GRANT ADMINISTER DATABASE TRIGGER TO ganesh1 ;
GRANT AUDIT ANY TO ganesh1 ;
GRANT MANAGE FILE GROUP TO ganesh1 ;

-- QUOTAS
ALTER USER ganesh1 QUOTA UNLIMITED ON EXAMPLE;