CREATE OR REPLACE PROCEDURE DestroyObject (varObjType IN Varchar2, varObjName IN Varchar2) IS
	/* Creating a static cursor to retrieve user objects. */
		CURSOR OBJ_CUR IS 
			SELECT OBJECT_NAME, OBJECT_TYPE FROM USER_OBJECTS 
				WHERE OBJECT_NAME LIKE UPPER(varObjName) 
					AND OBJECT_TYPE LIKE UPPER(varObjType) 
						ORDER BY OBJECT_NAME;
	/* Declaring a handle to the Dynamic SQL cursor. */
		curDrop Integer;

		BEGIN
		/* For each object in the cursor. */
			FOR OBJ_REC IN OBJ_CUR
			LOOP
			/* Opening a cursor and returning cursor ID. */ 
				curDrop := DBMS_SQL.OPEN_CURSOR;
			/* Parsing dynamic SQL command to drop the object. */
				DBMS_SQL.PARSE (curDrop, 'DROP ' || OBJ_REC.OBJECT_TYPE || ' ' || OBJ_REC.OBJECT_NAME, DBMS_SQL.V7);
			/* Closing the cursor. */ 
				DBMS_SQL.CLOSE_CURSOR (curDrop);
			END LOOP;
		END;
	/
  
--test the procedures
exec destroyObject('View','OBJVWBESTSELLINGBOOKS');
exec destroyObject('View','VLOCATIONS');
exec destroyObject('View','VW_CLERK_EMPLOYEES');
exec destroyObject('View','VW_EMPLOYEEMASTER');
exec destroyObject('View','VW_IT_EMPLOYEES');
exec destroyObject('View','EMP_DETAILS_VIEW');