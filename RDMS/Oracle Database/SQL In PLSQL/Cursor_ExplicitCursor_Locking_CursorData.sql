--using FOR UPDATE clause

SET SERVEROUTPUT ON
	DECLARE
	/* Cursor Declaration. */
		CURSOR curEmployees IS 
    SELECT EmployeeNo, FirstName, LastName, Salary FROM Employees FOR UPDATE;   ---locking the cursor data using FOR UPDATE Clause

	/* Memory variables to hold the data fetched. */
		varEmployeeNo Employees.EmployeeNo%TYPE;
		varFirstName Employees.FirstName%TYPE;
		varLastName Employees.LastName%TYPE;
		varSalary Employees.Salary%TYPE;

	/* Memory variables to hold the username and password. */
		varUsername Employees.Username%TYPE;
		varPassword Employees.Password%TYPE;

	BEGIN
	/* Opening cursor. */
		OPEN curEmployees;
	/* If the cursor is open continue with the data processing else display an appropriate error message. */
		IF curEmployees%ISOPEN THEN
			LOOP
				FETCH curEmployees 
        INTO varEmployeeNo, varFirstName, varLastName, varSalary;
			/* Exiting the loop if no records are available. */
				EXIT WHEN curEmployees%NOTFOUND;
				IF curEmployees%FOUND THEN
				/* Generating Usernames and Passwords some logic */
					varUsername := SUBSTR(varFirstName, -2, 2) || SUBSTR(varLastName, 1, 2) || varEmployeeNo;
					varPassword := SUBSTR(varFirstName, 1, 2) || SUBSTR(varLastName, 1, 2) || SUBSTR(TO_CHAR(varLastName), -2, 2);

				/* Updating Employees table with the generated values. */
					UPDATE Employees SET Username = varUsername, Password = varPassword 
						WHERE EmployeeNo = varEmployeeNo;
				END IF;
			END LOOP;
		/* Making the changes permanent. */
			COMMIT;
		ELSE
			DBMS_OUTPUT.PUT_LINE('No records found in the Employees table');
		END IF;
	/* Closing the cursor. */
		CLOSE curEmployees;
	END;
	/

/*
As soon as a cursor is opened, all rows reterieved by that query are locked and remain locked until a COMMIT is issued to make the changes is issued to make the changes[if any] permanent or a ROLLBACK is issues to cancel changes[if any].

when either of these commands is issues lock on the rows are released.
*/