CREATE OR REPLACE PROCEDURE CountRecords(varTableName IN Varchar2, varColumnName IN Varchar2)
		IS 
	/* Declaring a handle to the Dynamic SQL cursor. */
		varCursor Number;
	/* Declaring a variable to hold the SQL query. */
		varSQL Varchar2(200);
	/* Declaring a variable to hold the return value from the EXECUTE. */
		varResult Number;
	/* Declaring a variable to hold the number of count. */
		varCount Number;

		BEGIN
		/* Defining Dynamic SQL statement. */
			varSQL := 'SELECT COUNT(:ColName) ColumnCount FROM ' || varTableName;
		/* Opening Cursor. */
			varCursor := DBMS_SQL.OPEN_CURSOR;
		/* Parsing SQL statement. */
			DBMS_SQL.PARSE(varCursor, varSQL, DBMS_SQL.v7);
		/* Binding Data. */
			DBMS_SQL.BIND_VARIABLE (varCursor, 'ColName', varColumnName);
		/* Defining variables to fetch data from the cursor. */
			DBMS_SQL.DEFINE_COLUMN(varCursor, 1, varCount);
		/* Executing SQL statement. */
			varResult := DBMS_SQL.EXECUTE(varCursor);

		/* Fetching and Processing. */
			LOOP
			/* Exit condition for the loop. */
				EXIT WHEN DBMS_SQL.FETCH_ROWS (varCursor) = 0;
			/* Transferring value from the SELECT column list to the variable. */
				DBMS_SQL.COLUMN_VALUE(varCursor, 1, varCount);
			END LOOP;
		/* Displaying the number of rows as a message. */
			DBMS_OUTPUT.PUT_LINE('Number of Rows in table named ' || varTableName || ' is ' || varCount);
		/* Closing Cursor. */
			DBMS_SQL.CLOSE_CURSOR(varCursor);
		END CountRecords;
	/

Test the procedures as:

SET SERVEROUTPUT ON
EXEC Countrecords('employees', 'last_name');

