/*
-- Write a function that:
-- 1. Accepts: 
--    a. Table name
--    b. Column name
--    c. Column value
-- 2. Determines if the column value is available in the column of that table
-- 3. If it is, then return 1 otherwise return 0
*/

CREATE OR REPLACE FUNCTION ChkAvailability (varTableName IN Varchar2, 
		varColumnName IN Varchar2, varColumnValue IN Varchar2) 
		RETURN Number AS

		/* Declaring a handle to the Dynamic SQL cursor. */
			curChkAvl Integer;
		/* Declaring a variable to hold the return value from the EXECUTE. */
			EXECUTE_FEEDBACK Integer;

		BEGIN
		/* Opening a cursor and storing the returned cursor ID. */ 
			curChkAvl := DBMS_SQL.OPEN_CURSOR;
		/* Parsing the SQL query with the columns in the SELECT list. */
		DBMS_SQL.PARSE (curChkAvl, 'SELECT :ColumnName FROM ' || varTableName || 'WHERE :ColumnName = :ColumnValue', DBMS_SQL.V7);

		/* Binding columns to Cursor Columns. */
			DBMS_SQL.BIND_VARIABLE (curChkAvl, 'ColumnName', varColumnName);
			DBMS_SQL.BIND_VARIABLE (curChkAvl, 'ColumnValue', varColumnValue);
		/* Executing the SQL statement. */
			EXECUTE_FEEDBACK := DBMS_SQL.EXECUTE(curChkAvl);

		/* Determining if the SQL query execution returned records. */
			IF DBMS_SQL.FETCH_ROWS (curChkAvl) = 0 THEN
				RETURN 0;
			ELSE
				RETURN 1;
			END IF;
	/* Closing the Cursor. */
			DBMS_SQL.CLOSE_CURSOR (curChkAvl);
		END;
	/

---testing the functionality
SET SERVEROUTPUT ON
	DECLARE
	/* Declaring a variable that holds the return value of the function. */
		varAvailability Number;
		BEGIN
		/* Calling the function ChkAvailability that takes the table name and column name/value as parameters and returns a number. */
			varAvailability := ChkAvailability ('&TABLENAME', '&COLUMNNAME', '&COLUMNVALUE');
		/* Displaying an appropriate message to the user */
			IF varAvailability = 1 THEN
				DBMS_OUTPUT.PUT_LINE ('The column value is available.');
			ELSE
				DBMS_OUTPUT.PUT_LINE ('The column value is not available');
			END IF;
		END;
	/