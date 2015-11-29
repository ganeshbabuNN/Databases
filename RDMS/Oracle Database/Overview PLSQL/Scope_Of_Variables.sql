SET SERVEROUTPUT ON
	DECLARE
	/* Global variables declared. */
		varGlobalVariable1 Number; 
		varGlobalVariable2 Number; 

	/* *************** Outer code block starts. *************** */
	BEGIN 
	/* Global variables assigned. */
		varGlobalVariable1 := 1000; 
		varGlobalVariable2 := 2000; 
	/* *************** Inner code block starts. *************** */
		DECLARE 
		/* Local variable declared. */
			varLocalVariable Number; 
		BEGIN
		/* Local variable assigned using values from Global variables. */
			varLocalVariable := varGlobalVariable1 * varGlobalVariable2; 
		/* Printing a message. */
			DBMS_OUTPUT.PUT_LINE('Value in the local variable: ' || TO_CHAR(varLocalVariable));
		END; 
	/* *************** Inner code block ends. *************** */
	END; 
	/* *************** Outer code block ends. *************** */
	/