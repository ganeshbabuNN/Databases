--Privileges
grant EXP_FULL_DATABASE to HR;
--export with Full DB access
exp HR/<password> FULL=y FILE=HRData.dmp LOG=HRData.log CONSISTENT=y;

--HRData.dmp and HRData.log will be available in the current directories.


/*
Connected to: Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options
EXP-00023: must be a DBA to do Full Database or Tablespace export
Export done in WE8MSWIN1252 character set and AL16UTF16 NCHAR character set
. exporting pre-schema procedural objects and actions
. exporting foreign function library names for user HR 
. exporting PUBLIC type synonyms
. exporting private type synonyms
. exporting object type definitions for user HR 
About to export HR's objects ...
. exporting database links
. exporting sequence numbers
. exporting cluster definitions
. about to export HR's tables via Conventional Path ...
. . exporting table                      COUNTRIES         25 rows exported
. . exporting table                    DEPARTMENTS         27 rows exported
. . exporting table             EMPLOYEEAUDITTRAIL         10 rows exported
. . exporting table                 EMPLOYEEMUSTER          6 rows exported
. . exporting table                      EMPLOYEES        110 rows exported
. . exporting table                  EMPLOYEETABLE         99 rows exported
. . exporting table             ERROREMPLOYEETABLE          3 rows exported
. . exporting table                           JOBS         19 rows exported
. . exporting table                    JOB_HISTORY         10 rows exported
. . exporting table                      LOCATIONS         23 rows exported
. . exporting table                MLOG$_EMPLOYEES         85 rows exported
. . exporting table                 MV_PKEMPLOYEES        110 rows exported
. . exporting table             MV_ROWID_EMPLOYEES        110 rows exported
. . exporting table                MV_SQ_EMPLOYEES        109 rows exported
. . exporting table                   NEWEMPLOYEES          3 rows exported
. . exporting table                        REGIONS          4 rows exported
. . exporting table                RUPD$_EMPLOYEES
. exporting synonyms
. exporting views
. exporting stored procedures
. exporting operators
. exporting referential integrity constraints
. exporting triggers
. exporting indextypes
. exporting bitmap, functional and extensible indexes
. exporting posttables actions
. exporting materialized views
. exporting snapshot logs
EXP-00000: Export terminated unsuccessfully

--*/
