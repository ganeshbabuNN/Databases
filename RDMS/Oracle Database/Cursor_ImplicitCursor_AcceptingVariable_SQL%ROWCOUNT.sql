	DECLARE
		varEmpSick Number(10);
		varDate EmployeeMuster.MusterDate%TYPE;
		varEmployeeNo EmployeeMuster.EmployeeNo%TYPE;
	BEGIN
	/* Accepting a date */
		varDate := '&EnterDate';
	/* Updating the attendance column */
		UPDATE EmployeeMuster SET Attendance = 'Present'
			WHERE TO_CHAR(MusterDate,'DD-Mon-YY') = varDate AND Attendance = 'Sick Leave';

	/* Determining the number of employee who is sick */
		varEmpSick := SQL%ROWCOUNT;

	/* Returning the employee number with a message */
		IF varEmpSick > 0 THEN
			DBMS_OUTPUT.PUT_LINE(TO_CHAR(varEmpSick) || ' employees are found sick on ' varDate);
		ELSE			
			DBMS_OUTPUT.PUT_LINE('All employees found present on ' || varDate);
		END IF;
	END;