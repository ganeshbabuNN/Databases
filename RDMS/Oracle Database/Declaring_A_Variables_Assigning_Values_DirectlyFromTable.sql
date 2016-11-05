SET SERVEROUTPUT ON
	DECLARE 
  	varEmployeeID varchar2(20);
    varEmail  varchar2(20);
	BEGIN
	/* Using assignment operator. */
		varEmployeeID := 101;
	/* Using direct assignment from table column. */
		SELECT email INTO varEmail FROM employees WHERE employee_id = varEmployeeID; 
	/* Printing a message. */
		DBMS_OUTPUT.PUT_LINE('Address: ' || varEmail);
	END; 
	/
  
  
 