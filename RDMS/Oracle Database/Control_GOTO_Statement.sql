DECLARE
/* Declaration of memory variables and constants to be used in the Execution section.*/
	varEmpValid Char(1) := 'N';
	varEmpAtd Char(1);
	varEmployeeNo Employees.employee_id%TYPE;
BEGIN
/* Accepting the EmployeeNo */
	varEmployeeNo := &EmployeeNo;
/* Validating the existence of such an employee.*/
	SELECT 'Y' INTO varEmpValid FROM Employees WHERE employee_id = varEmployeeNo;

	IF varEmpValid = 'Y' THEN
	/* Accepting the Employee Attendance */
		varEmpAtd := '&Attendance';
	END IF;

/* Inserting a record in the EmployeeMuster table if the employee number is valid.*/
	IF varEmpAtd IS NOT NULL THEN
		IF varEmpAtd = 'P' THEN
			GOTO InsertPresent;
		ELSIF varEmpAtd = 'S' THEN
			GOTO InsertSickLeave;
		ELSE
			GOTO InsertAbsent;
		END IF;
	END IF;

/* GOTO code blocks. */
<<InsertPresent>>
	INSERT INTO EmployeeMuster (employee_id, muster_date, ATTENDENCE, Intime) 
		VALUES(varEmployeeNo, SYSDATE, 	'Present', CURRENT_TIMESTAMP);
<<InsertSickLeave>>
	INSERT INTO EmployeeMuster (employee_id, muster_date, ATTENDENCE, Intime) 
		VALUES(varEmployeeNo, SYSDATE, 'Sick Leave',CURRENT_TIMESTAMP);
<<InsertAbsent>>
	INSERT INTO EmployeeMuster (employee_id, muster_date, ATTENDENCE, Intime) 
		VALUES(varEmployeeNo, SYSDATE, 'Absent',CURRENT_TIMESTAMP);
END;
/