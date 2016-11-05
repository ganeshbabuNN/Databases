CREATE OR REPLACE PROCEDURE CreateView (varTableName IN Varchar2, varViewName IN Varchar2) IS
		/* Declaring a handle to the Dynamic SQL cursor. */
			curView Integer;
		BEGIN
			/* Opening a cursor and returning a cursor ID. */ 
				curView := DBMS_SQL.OPEN_CURSOR;
			/* Parsing dynamic SQL command to create a view. */
				DBMS_SQL.PARSE (curView, 'CREATE VIEW ' || varViewName || 'AS SELECT * FROM ' || varTableName, DBMS_SQL.V7);
			/* Binding columns to Cursor Columns. */
				DBMS_SQL.BIND_VARIABLE (curView, 'ViewName', varViewName);
			/* Closing the cursor. */ 
				DBMS_SQL.CLOSE_CURSOR (curView);
		END;
	/

destroyobject('View','vemp');
--Test the view as
EXEC CreateView('employees','vw_Emp1');