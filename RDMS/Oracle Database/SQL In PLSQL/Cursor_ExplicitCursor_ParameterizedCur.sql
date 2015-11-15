--declaring the cursor
declare
  CURSOR curEmployees(vLastName employees.last_name%TYPE)
   is select employee_id,first_name,last_name from employees
   where last_name=vLastName;
begin
   null;
end;

--opening the cursor
declare
  CURSOR cEmployees(vLastName employees.last_name%TYPE)
   is select employee_id,first_name,last_name from employees
   where last_name=vLastName;
begin
   open cEmployees('last_name');
end;

--generating the username and password of that fetech name
SET SERVEROUTPUT ON
	DECLARE
	/* Cursor Declaration. */
		CURSOR curEmployees(varLastName employees.lastname%TYPE) IS 
    SELECT EmployeeNo, FirstName, LastName, Salary FROM Employees
    where lastname=varLastName;

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
		OPEN curEmployees('&lastname');
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
