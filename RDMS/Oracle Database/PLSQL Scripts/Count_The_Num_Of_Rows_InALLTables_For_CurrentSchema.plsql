SET SERVEROUTPUT ON SIZE 1000000
	DECLARE
		tableName USER_TABLES.TABLE_NAME%TYPE;
		tableCommand Varchar2(200);
		tableColumnID Integer;
		tableTotalRecords Number(10);
		stat Integer;
		rowCount Integer;
	/* Displaying only those tables with more rows */
		tableLimit Integer := 0;
		CURSOR cursorTable IS SELECT TABLE_NAME FROM USER_TABLES ORDER BY TABLE_NAME;
	BEGIN
		tableLimit := 0;
		OPEN cursorTable;
			LOOP
				FETCH cursorTable INTO tableName;
				EXIT WHEN cursorTable%NOTFOUND;
				tableCommand := 'SELECT COUNT(0) FROM ' || tableName;
				tableColumnID := DBMS_SQL.OPEN_CURSOR;
				DBMS_SQL.PARSE(tableColumnID, tableCommand, DBMS_SQL.NATIVE);
				DBMS_SQL.DEFINE_COLUMN(tableColumnID, 1, tableTotalRecords);
				stat := DBMS_SQL.EXECUTE(tableColumnID);
				rowCount := DBMS_SQL.FETCH_ROWS(tableColumnID);
				DBMS_SQL.COLUMN_VALUE(tableColumnID, 1, tableTotalRecords);
				IF tableTotalRecords > tableLimit THEN
					DBMS_OUTPUT.PUT_LINE(RPAD(tableName, 55, ' ') || TO_CHAR(tableTotalRecords, '99999999') || ' record(s)');
				END IF;
				DBMS_SQL.CLOSE_CURSOR(tableColumnID);
			END LOOP;
		CLOSE cursorTable;
	END;
	/
