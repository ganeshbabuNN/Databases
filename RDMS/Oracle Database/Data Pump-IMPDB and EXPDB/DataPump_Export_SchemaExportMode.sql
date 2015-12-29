--creating the DB Directory objects
CREATE DIRECTORY MyBackups AS '/MyData/MyBackups'

--Give appropriate permissions for the Directory
GRANT READ,WRITE ON DIRECTORY MyBackups TO ganesh,hr;

--Privileges for the full database mod
GRANT EXP_FULL_DATABASE to ganesh,hr;

--export mode for schema mode for HB(for only one DB)
	EXPDP SYSTEM/<Password> DIRECTORY=MyBackups DUMPFILE=HRDB.dmp SCHEMAS=HR;

/*
Export: Release 11.2.0.1.0 - Production on Tue Dec 29 15:58:04 2015

Copyright (c) 1982, 2009, Oracle and/or its affiliates.  All rights reserved.

Connected to: Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit
Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options
Starting "SYSTEM"."SYS_EXPORT_SCHEMA_01":  SYSTEM/******** DIRECTORY=MyBackups D
UMPFILE=HRDB.dmp SCHEMAS=HR
Estimate in progress using BLOCKS method...
Processing object type SCHEMA_EXPORT/TABLE/TABLE_DATA
Total estimation using BLOCKS method: 448 KB
Processing object type SCHEMA_EXPORT/USER
Processing object type SCHEMA_EXPORT/SYSTEM_GRANT
Processing object type SCHEMA_EXPORT/ROLE_GRANT
Processing object type SCHEMA_EXPORT/DEFAULT_ROLE
Processing object type SCHEMA_EXPORT/PRE_SCHEMA/PROCACT_SCHEMA
Processing object type SCHEMA_EXPORT/TYPE/TYPE_SPEC
Processing object type SCHEMA_EXPORT/SEQUENCE/SEQUENCE
Processing object type SCHEMA_EXPORT/CLUSTER/CLUSTER
Processing object type SCHEMA_EXPORT/TABLE/TABLE
Processing object type SCHEMA_EXPORT/TABLE/GRANT/OWNER_GRANT/OBJECT_GRANT
Processing object type SCHEMA_EXPORT/TABLE/INDEX/INDEX
Processing object type SCHEMA_EXPORT/TABLE/CONSTRAINT/CONSTRAINT
Processing object type SCHEMA_EXPORT/TABLE/INDEX/STATISTICS/INDEX_STATISTICS
Processing object type SCHEMA_EXPORT/TABLE/COMMENT
Processing object type SCHEMA_EXPORT/FUNCTION/FUNCTION
Processing object type SCHEMA_EXPORT/PROCEDURE/PROCEDURE
Processing object type SCHEMA_EXPORT/FUNCTION/ALTER_FUNCTION
Processing object type SCHEMA_EXPORT/PROCEDURE/ALTER_PROCEDURE
Processing object type SCHEMA_EXPORT/TYPE/TYPE_BODY
Processing object type SCHEMA_EXPORT/TABLE/CONSTRAINT/REF_CONSTRAINT
Processing object type SCHEMA_EXPORT/TABLE/INDEX/FUNCTIONAL_AND_BITMAP/INDEX
Processing object type SCHEMA_EXPORT/TABLE/INDEX/STATISTICS/FUNCTIONAL_AND_BITMA
P/INDEX_STATISTICS
Processing object type SCHEMA_EXPORT/TABLE/STATISTICS/TABLE_STATISTICS
Processing object type SCHEMA_EXPORT/TABLE/POST_TABLE_ACTION
. . exported "HR"."COUNTRIES"                            6.375 KB      25 rows
. . exported "HR"."DEPARTMENTS"                          7.015 KB      27 rows
. . exported "HR"."EMPLOYEES"                            17.19 KB     110 rows
. . exported "HR"."JOBS"                                 6.992 KB      19 rows
. . exported "HR"."JOB_HISTORY"                          7.054 KB      10 rows
. . exported "HR"."LOCATIONS"                            8.281 KB      23 rows
. . exported "HR"."REGIONS"                              5.484 KB       4 rows
. . exported "HR"."LOG_TABLE"                                0 KB       0 rows
Master table "SYSTEM"."SYS_EXPORT_SCHEMA_01" successfully loaded/unloaded
******************************************************************************
Dump file set for SYSTEM.SYS_EXPORT_SCHEMA_01 is:
  C:\MYDATA\MYBACKUPS\HRDB.DMP
Job "SYSTEM"."SYS_EXPORT_SCHEMA_01" successfully completed at 15:58:30

*/


--export mode for schema mode for HR, SH( more then one DB);
	EXPDP SYSTEM/<Password> DIRECTORY=MyBackups DUMPFILE=HRSHDB.dmp SCHEMAS=HR,SH;

/*
Export: Release 11.2.0.1.0 - Production on Tue Dec 29 15:59:37 2015

Copyright (c) 1982, 2009, Oracle and/or its affiliates.  All rights reserved.

Connected to: Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit
Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options
Starting "SYSTEM"."SYS_EXPORT_SCHEMA_01":  SYSTEM/******** DIRECTORY=MyBackups D
UMPFILE=HRSHDB.dmp SCHEMAS=HR,SH;
Estimate in progress using BLOCKS method...
Processing object type SCHEMA_EXPORT/TABLE/TABLE_DATA
Total estimation using BLOCKS method: 448 KB
Processing object type SCHEMA_EXPORT/USER
Processing object type SCHEMA_EXPORT/SYSTEM_GRANT
Processing object type SCHEMA_EXPORT/ROLE_GRANT
Processing object type SCHEMA_EXPORT/DEFAULT_ROLE
Processing object type SCHEMA_EXPORT/PRE_SCHEMA/PROCACT_SCHEMA
Processing object type SCHEMA_EXPORT/TYPE/TYPE_SPEC
Processing object type SCHEMA_EXPORT/SEQUENCE/SEQUENCE
Processing object type SCHEMA_EXPORT/CLUSTER/CLUSTER
Processing object type SCHEMA_EXPORT/TABLE/TABLE
Processing object type SCHEMA_EXPORT/TABLE/GRANT/OWNER_GRANT/OBJECT_GRANT
Processing object type SCHEMA_EXPORT/TABLE/INDEX/INDEX
Processing object type SCHEMA_EXPORT/TABLE/CONSTRAINT/CONSTRAINT
Processing object type SCHEMA_EXPORT/TABLE/INDEX/STATISTICS/INDEX_STATISTICS
Processing object type SCHEMA_EXPORT/TABLE/COMMENT
Processing object type SCHEMA_EXPORT/FUNCTION/FUNCTION
Processing object type SCHEMA_EXPORT/PROCEDURE/PROCEDURE
Processing object type SCHEMA_EXPORT/FUNCTION/ALTER_FUNCTION
Processing object type SCHEMA_EXPORT/PROCEDURE/ALTER_PROCEDURE
Processing object type SCHEMA_EXPORT/TYPE/TYPE_BODY
Processing object type SCHEMA_EXPORT/TABLE/CONSTRAINT/REF_CONSTRAINT
Processing object type SCHEMA_EXPORT/TABLE/INDEX/FUNCTIONAL_AND_BITMAP/INDEX
Processing object type SCHEMA_EXPORT/TABLE/INDEX/STATISTICS/FUNCTIONAL_AND_BITMA
P/INDEX_STATISTICS
Processing object type SCHEMA_EXPORT/TABLE/STATISTICS/TABLE_STATISTICS
Processing object type SCHEMA_EXPORT/TABLE/POST_TABLE_ACTION
. . exported "HR"."COUNTRIES"                            6.375 KB      25 rows
. . exported "HR"."DEPARTMENTS"                          7.015 KB      27 rows
. . exported "HR"."EMPLOYEES"                            17.19 KB     110 rows
. . exported "HR"."JOBS"                                 6.992 KB      19 rows
. . exported "HR"."JOB_HISTORY"                          7.054 KB      10 rows
. . exported "HR"."LOCATIONS"                            8.281 KB      23 rows
. . exported "HR"."REGIONS"                              5.484 KB       4 rows
. . exported "HR"."LOG_TABLE"                                0 KB       0 rows
ORA-39165: Schema SH; was not found.
Master table "SYSTEM"."SYS_EXPORT_SCHEMA_01" successfully loaded/unloaded
******************************************************************************
Dump file set for SYSTEM.SYS_EXPORT_SCHEMA_01 is:
  C:\MYDATA\MYBACKUPS\HRSHDB.DMP
Job "SYSTEM"."SYS_EXPORT_SCHEMA_01" completed with 1 error(s) at 15:59:57

*/