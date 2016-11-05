DECLARE
	/* Cursor Declaration. */
		CURSOR curEmployees IS SELECT EmployeeNo, FirstName, LastName, Salary FROM Employees;

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
			FETCH curEmployees INTO varEmployeeNo, varFirstName, varLastName, varSalary;
			WHILE curEmployees%FOUND
			LOOP
			/* Exiting the loop if no records are available. */
				EXIT WHEN curEmployees%NOTFOUND;
				IF curEmployees%FOUND THEN
				/* Generating Usernames and Passwords. */
					varUsername := SUBSTR(varFirstName, -2, 2) || SUBSTR(varLastName, 1, 2) || varEmployeeNo;
					varPassword := SUBSTR(varFirstName, 1, 2) || SUBSTR(varLastName, 1, 2) || SUBSTR(TO_CHAR(varSalary), -2, 2);

				/* Updating Employees table with the generated values. */
					UPDATE Employees SET Username = varUsername, Password = varPassword 
						WHERE EmployeeNo = varEmployeeNo;
				FETCH curEmployees INTO varEmployeeNo, varFirstName, varLastName, varSalary;
				END IF;
			END LOOP;
		/* Making the changes permanent. */
			COMMIT;
		ELSE
			DBMS_OUTPUT.PUT_LINE('No records found in the Employees table');
		END IF;	
	/* Closing cursor. */
		CLOSE curEmployees;
	END;
	/

/*
here, the data is fetched twice, this is required for the following to work;
%FOUND will only function , if the data is fetched.
after the data is fetched, the WHILE LOOP, runs till it finds records in the cursor.

*/