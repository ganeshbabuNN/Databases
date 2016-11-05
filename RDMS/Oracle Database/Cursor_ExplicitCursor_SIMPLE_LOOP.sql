--just fetching and display
declare 
  vID employees.employee_id%TYPE;
  vFirstName employees.first_name%TYPE;
  vLastName employees.last_name%TYPE;
  cursor curEmployee is 
  select employee_id,first_name,last_name from employees;
begin
  open curEmployee;  
  --looping into the cursor for iteratiion
  LOOP
  --featch cursor data into memory variables
  FETCH curEmployee INTO vID,vFirstName,vLastName;
  --Defining an exit condition
  EXIT WHEN curEmployee%NOTFOUND;
  --displaying the output
  dbms_output.put_line('EmployeeNumber '||vID);
  dbms_output.put_line('EmployeeNumber '||vFirstName);
  dbms_output.put_line('EmployeeNumber '||vLastName);
  dbms_output.put_line('----------------------------');
  END LOOP;
end;

-------------------------------------
--generate username and password for all
SET SERVEROUTPUT ON
	DECLARE
	/* Cursor Declaration. */
		CURSOR curEmployees IS 
    SELECT EmployeeNo, FirstName, LastName, Salary FROM Employees;

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
-The meomroy variables declared to hold them
-the loop is used to tranverse through the records return.it iterate every time.
1.Fetches the data retrieved by the ucrsor into memory variables
2.Checks if the data was retrived using FETCH , if it was returned.
a)Generates the Username and Password.
b)Update the Employees table with the generated username and password for an employee.
Position 1 and 2 are repeated for all records that are held in the Active Data Set.


*/

----------------------------------------
--generate user name and password for first 5 employees
SET SERVEROUTPUT ON
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
			LOOP
				FETCH curEmployees INTO varEmployeeNo, varFirstName, varLastName, varSalary;
			/* Exiting the loop if the first five records are retrieved or no records are available whichever happens first. */
				EXIT WHEN (curEmployees%ROWCOUNT - 1) = 5 OR curEmployees%NOTFOUND;
				IF curEmployees%FOUND THEN
				/* Generating Usernames and Passwords. */
					varUsername := SUBSTR(varFirstName, -2, 2) || SUBSTR(varLastName, 1, 2) || varEmployeeNo;
					varPassword := SUBSTR(varFirstName, 1, 2) || SUBSTR(varLastName, 1, 2) || SUBSTR(TO_CHAR(varSalary), -2, 2);

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
	/* Closing cursor. */
		CLOSE curEmployees;
	END;
	/
