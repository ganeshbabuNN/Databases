SET SERVEROUTPUT ON
	DECLARE
		varEmployeeNo Employees.EmployeeNo%TYPE;
		varDeptNo Employees.DeptNo%TYPE;

	BEGIN
	/* Accepting employee number */
		varEmployeeNo := &EmployeeNo;
	/* Accepting department number */
		varDeptNo := &DeptNo;

	/* Updating the department number */
		UPDATE Employees SET DeptNo = varDeptNo WHERE EmployeeNo = varEmployeeNo;

	/* Displaying a message if the update is successful */
		IF SQL%FOUND THEN
			DBMS_OUTPUT.PUT_LINE('Employee ' || varEmployeeNo || ' Successfully Transferred to DeptNo: ' || varDeptNo);
		END IF;

	/* Validating the existence of the employee and department */
		IF SQL%NOTFOUND THEN
			DBMS_OUTPUT.PUT_LINE('Employee ' || varEmployeeNo || ' does not exist.');
		END IF;
	END;
	/