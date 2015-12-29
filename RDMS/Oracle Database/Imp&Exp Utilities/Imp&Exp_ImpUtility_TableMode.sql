--importing some ables from the schema name ganesh -ONLY DBA can do this
IMP system/Ga55word FILE=ganeshdata.dmp FROMUSER=ganesh TABLES=(employee,salary)


/*
Import: Release 11.2.0.1.0 - Production on Tue Dec 29 12:34:04 2015

Copyright (c) 1982, 2009, Oracle and/or its affiliates.  All rights reserved.


Connected to: Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit
Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options

Export file created by EXPORT:V11.02.00 via conventional path

Warning: the objects were exported by GANESH, not by you

import done in WE8MSWIN1252 character set and AL16UTF16 NCHAR character set
. importing GANESH's objects into SYSTEM
. . importing table             "AUDIT_DEPARTMENT"          4 rows imported
. . importing table               "AUDIT_EMPLOYEE"          8 rows imported
. . importing table                 "AUDIT_SALARY"          4 rows imported
. . importing table                  "CVT_T1_DAYS"          1 rows imported
. . importing table                   "DEPARTMENT"          4 rows imported
. . importing table                     "EMPLOYEE"          2 rows imported
. . importing table                      "EXAUDIT"          1 rows imported
. . importing table                       "SALARY"          4 rows imported
. . importing table                     "STUDENTS"          5 rows imported
Import terminated successfully with warnings.
*/


--importing only some specific table from schema name beloging to that user and changing the owner to other user while importing ONLY DBA can do this
IMP system/Ga55word FILE=ganeshdata.dmp FROMUSER=ganesh TOUSER=ganesh3 TABLES=(employee,salary)


/*
Import: Release 11.2.0.1.0 - Production on Tue Dec 29 12:44:12 2015

Copyright (c) 1982, 2009, Oracle and/or its affiliates.  All rights reserved.


Connected to: Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit
Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options

Export file created by EXPORT:V11.02.00 via conventional path

Warning: the objects were exported by HR, not by you

import done in WE8MSWIN1252 character set and AL16UTF16 NCHAR character set
IMP-00009: abnormal end of export file
IMP-00034: Warning: FromUser "GANESH" not found in export file
IMP-00033: Warning: Table "EMPLOYEE" not found in export file
IMP-00033: Warning: Table "SALARY" not found in export file
Import terminated successfully with warnings.
*/
