--creating the DB Directory objects
CREATE DIRECTORY MyBackups AS '/MyData/MyBackups'

--Give appropriate permissions for the Directory
GRANT READ,WRITE ON DIRECTORY MyBackups TO ganesh,hr;

--Privileges for the full database mod
GRANT EXP_FULL_DATABASE to ganesh,hr;

--export mode for schema mode for HB(for only one DB)
	EXPDP SYSTEM/<Password> DIRECTORY=MyBackups DUMPFILE=StuSalTbls.dmp TABLES=students,salary;

/*
Export: Release 11.2.0.1.0 - Production on Tue Dec 29 16:07:01 2015

Copyright (c) 1982, 2009, Oracle and/or its affiliates.  All rights reserved.

Connected to: Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit
Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options
Starting "GANESH"."SYS_EXPORT_TABLE_01":  ganesh/******** DIRECTORY=MyBackups DU
MPFILE=StuSalTbls.dmp TABLES=students,salary;
Estimate in progress using BLOCKS method...
Processing object type TABLE_EXPORT/TABLE/TABLE_DATA
Total estimation using BLOCKS method: 64 KB
Processing object type TABLE_EXPORT/TABLE/TABLE
Processing object type TABLE_EXPORT/TABLE/CONSTRAINT/CONSTRAINT
Processing object type TABLE_EXPORT/TABLE/INDEX/STATISTICS/INDEX_STATISTICS
Processing object type TABLE_EXPORT/TABLE/TRIGGER
Processing object type TABLE_EXPORT/TABLE/STATISTICS/TABLE_STATISTICS
. . exported "GANESH"."STUDENTS"                         5.953 KB       5 rows
ORA-39166: Object GANESH.SALARY; was not found.
Master table "GANESH"."SYS_EXPORT_TABLE_01" successfully loaded/unloaded
******************************************************************************
Dump file set for GANESH.SYS_EXPORT_TABLE_01 is:
  C:\MYDATA\MYBACKUPS\STUSALTBLS.DMP
Job "GANESH"."SYS_EXPORT_TABLE_01" completed with 1 error(s) at 16:07:05
*/