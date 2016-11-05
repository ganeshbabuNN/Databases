--storing department and employees information into one Table -- CursorIntoCursors
DECLARE
		/* First cursor */
			CURSOR curDepartments IS SELECT * FROM Departments;
		/* Second cursor */
			CURSOR curEmployees(varDeptNo Departments.DeptNo%TYPE) 
				IS SELECT * FROM Employees WHERE DeptNo = varDeptNo;
		BEGIN
		/* Defining a For loop for first cursor */
			FOR typDepartments IN curDepartments
			LOOP
			/* Defining a For loop for second cursor */
				FOR typEmployees IN curEmployees (typDepartments.DeptNo)
				LOOP
				/* Inserting data from both the cursor */
					INSERT INTO EmployeesDept (EmployeeNo, FirstName, LastName, DateOfBirth, ContactNo, Salary, Designation, ManagerNo, DeptNo, DepartmentName, UserName, Password) 
						VALUES (typEmployees.EmployeeNo, typEmployees.FirstName, typEmployees.LastName, typEmployees.DateOfBirth, typEmployees.ContactNo, typEmployees.Salary, typEmployees.Designation, typEmployees.ManagerNo, typDepartments.DeptNo, typDepartments.DepartmentName, typEmployees.UserName, typEmployees.Password);
				END LOOP;
			END LOOP;
		/* Make the changes permanent. */
			COMMIT;
	END;
	/

/*
After the data is feteched from both the cursors, the same is inserted in the de-normalized table emplyeesDept
*/