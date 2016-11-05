--only DBA can do or priviles with IMP_FULL_DATABASE privilages
grant IMP_FULL_DATABASE to ganesh1;

--now the start the IMP
IMP ganesh1/<password> FULL=y FILE=ganesh1data.dmp


/*
Connected to: Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit
Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options

Export file created by EXPORT:V11.02.00 via conventional path

Warning: the objects were exported by GANESH, not by you

import done in WE8MSWIN1252 character set and AL16UTF16 NCHAR character set
. importing GANESH's objects into GANESH1
. . importing table             "AUDIT_DEPARTMENT"          4 rows imported
. . importing table               "AUDIT_EMPLOYEE"          8 rows imported
. . importing table                 "AUDIT_SALARY"          4 rows imported
. . importing table                  "CVT_T1_DAYS"          1 rows imported
. . importing table                   "DEPARTMENT"          4 rows imported
. . importing table                     "EMPLOYEE"          2 rows imported
. . importing table                      "EXAUDIT"          1 rows imported
. . importing table                        "PKEYS"          1 rows imported
. . importing table                       "SALARY"          4 rows imported
. . importing table                     "STUDENTS"          5 rows imported
Import terminated successfully without warnings.
*/

