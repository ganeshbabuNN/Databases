/*
1. A REF Cursor as a parameter
-- 2. Displays the structure of that cursor
*/
CREATE OR REPLACE PROCEDURE DescStructure (varCursor SYS_REFCURSOR) IS
	/* Declaring a REF Cursor. */
		curRef SYS_REFCURSOR;
	/* Declaring a DBMS_SQL Cursor. */
		curDyn Integer;
	/* Declaring a variable to hold the number of columns. */
		varNoOfCols Integer;
	/* Declaring a record type. */
		varDescTab DBMS_SQL.DESC_TAB;
	BEGIN
	/* Assigning the cursor received as a parameter to a local REF Cursor. */
		curRef := varCursor;
	/* Converting A REF Cursor TO DBMS_SQL Cursor. */
		curDyn := DBMS_SQL.TO_CURSOR_NUMBER(curRef);

	/* Calling DESCRIBE_COLUMNS to populate the table with the description of each column */
		DBMS_SQL.DESCRIBE_COLUMNS(curDyn, varNoOfCols, varDescTab);
	/* Displaying the number of columns. */
		DBMS_OUTPUT.PUT_LINE('number of columns = ' || varNoOfCols);
	/* Displaying the column description. */
		DBMS_OUTPUT.NEW_LINE;
		DBMS_OUTPUT.PUT_LINE('Columns');
		DBMS_OUTPUT.PUT_LINE('===========================');

	/* Traversing through the available columns. */
		FOR i IN 1..varNoOfCols
		LOOP
		/* Retrieving the column description for each column in the loop. */
			DBMS_OUTPUT.PUT_LINE(varDescTab(i).col_name);
		END LOOP;

	/* Closing the cursor. */
		DBMS_SQL.CLOSE_CURSOR(curDyn);

	/* Handling Exceptions. */
		EXCEPTION
			WHEN OTHERS THEN
				IF DBMS_SQL.IS_OPEN(curDyn) THEN
					DBMS_SQL.CLOSE_CURSOR(curDyn);
				END IF;
		RAISE;
	END DescStructure;
 /
--test the procedures
SET SERVEROUTPUT ON
	DECLARE
		curTemp SYS_REFCURSOR;
	BEGIN
		OPEN curTemp FOR SELECT * FROM Employees;
		DescStructure(curTemp);
	END;
	/