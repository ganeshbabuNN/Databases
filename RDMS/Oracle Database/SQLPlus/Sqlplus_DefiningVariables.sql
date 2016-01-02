/*
SQL> define custom=ganesh
SQL> define
DEFINE _DATE           = "02-JAN-16" (CHAR)
DEFINE _CONNECT_IDENTIFIER = "gb" (CHAR)
DEFINE _USER           = "HR" (CHAR)
DEFINE _PRIVILEGE      = "" (CHAR)
DEFINE _SQLPLUS_RELEASE = "1102000100" (CHAR)
DEFINE _EDITOR         = "Notepad" (CHAR)
DEFINE _O_VERSION      = "Oracle Database 11g Enterprise Edition Release 11.2.0.
1.0 - 64bit Production
With the Partitioning, OLAP, Data Mining and Real Application Testing options" (
CHAR)
DEFINE _O_RELEASE      = "1102000100" (CHAR)
DEFINE _RC             = "0" (CHAR)
DEFINE CUSTOM          = "ganesh" (CHAR)
*/

Define customer = ganesh
select first_name ,last_name from customer;

