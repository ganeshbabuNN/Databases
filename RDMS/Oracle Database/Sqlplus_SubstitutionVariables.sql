---for &(Single ampersand)
SQL> SELECT first_name from employees where employee_id like '&id';
Enter value for id: 100
old   1: SELECT first_name from employees where employee_id like '&id'
new   1: SELECT first_name from employees where employee_id like '100'

--this will be interpreted as
SELECT first_name from employees where employee_id like '100';

---for &&(double ampersand)
SQL> select first_name from employees where employee_id like '&&ID';
Enter value for id: 100
old   1: select first_name from employees where employee_id like '&&ID'
new   1: select first_name from employees where employee_id like '100'

FIRST_NAME
--------------------
Steven

--the && deines the variable similar to what the DEFINE command would does
--enter the following command to verify
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
DEFINE ID              = "100" (CHAR)