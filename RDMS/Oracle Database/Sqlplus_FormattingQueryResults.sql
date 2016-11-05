SQL> select employee_id,first_name,last_name from employees where employee_id=10
0;

EMPLOYEE_ID FIRST_NAME           LAST_NAME
----------- -------------------- -------------------------
        100 Steven               King

--defining the column name
SQL> COLUMN employee_id HEADING employeeno
SQL> COLUMN first_name HEADING firstName
SQL> COLUMN last_name HEADING lastName
SQL> SET UNDERLINE =
SQL> select employee_id,first_name,last_name from employees where employee_id=10
0;

employeeno firstName            lastName
========== ==================== =========================
       100 Steven               King

--For all column which has been defined
SQL> COLUMN
--for individual column
SQL> COLUMN employee_ID
--clear all the column
SQL>CLEAR COLUMNS
--for individual column to clear
SQL>COLUMN Employee_id CLEAR
--Turning of the specific column heading
SQL>COLUMN employee_id OFF
SQL>COLUMN first_name ON
/*
SQL plus wraps column values to additional lines when the values does not fit within the column width.if a record separator needs to be inserted after each WRAPPED line of output or EACH line, then user the RECSEP and RECSEPCHAR variablesof the SET command
*/
SQL>SET RECSEP WRAPPED
	SET RECSEP EACH
	SET RECSEPCHAR '-'
-Even the whole word can be wrapped to additional lines when a column value wraps to additional ines
COLUMN employee_id WORD_WRAPPED
