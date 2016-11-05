--with the privileges if required
--exporting using table mode
EXP SYSTEM/<password> FILE=Backup_3Tables.dmp TABLES=(ganesh.employee,ganesh.salary);

/*
Export: Release 11.2.0.1.0 - Production on Tue Dec 29 12:08:57 2015

Copyright (c) 1982, 2009, Oracle and/or its affiliates.  All rights reserved.


Connected to: Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit
Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options
Export done in WE8MSWIN1252 character set and AL16UTF16 NCHAR character set

About to export specified tables via Conventional Path ...
Current user changed to GANESH
. . exporting table                       EMPLOYEE          2 rows exported
. . exporting table                         SALARY          4 rows exported
Export terminated successfully without warnings.
*/

--by schema specific 
EXP Ganesh/<password> FILE=Backup_4Tables.dmp TABLES=(ganesh.employee,ganesh.salary);

/*
Export: Release 11.2.0.1.0 - Production on Tue Dec 29 12:09:53 2015

Copyright (c) 1982, 2009, Oracle and/or its affiliates.  All rights reserved.


Connected to: Oracle Database 11g Enterprise Edition Release 11.2.0.1.0 - 64bit
Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options
Export done in WE8MSWIN1252 character set and AL16UTF16 NCHAR character set

About to export specified tables via Conventional Path ...
. . exporting table                       EMPLOYEE          2 rows exported
. . exporting table                         SALARY          4 rows exported
Export terminated successfully without warnings.
*/
