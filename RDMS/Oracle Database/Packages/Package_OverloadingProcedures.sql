---spec
CREATE OR REPLACE PACKAGE EmpLib IS
		PROCEDURE IncrementDeptSal(varDeptName Varchar2, varIncrement Number DEFAULT 1.10);
		PROCEDURE IncrementDeptSal(varDeptNo Number, varIncrement Number DEFAULT 1.10);
	END;
	/

--body
CREATE OR REPLACE PACKAGE BODY EmpLib IS
		PROCEDURE IncrementDeptSal(varDeptName Varchar2, varIncrement Number DEFAULT 1.10) IS
		/* Defining parameterized cursor to hold salary of all employees in a particular */
			CURSOR curEmployees (varDeptName Varchar2) IS
				SELECT Salary FROM Employees WHERE DeptNo = (SELECT DeptNo 
					FROM Departments WHERE DepartmentName = varDeptName)
						FOR UPDATE OF Salary;
			BEGIN
			/* Defining a For loop */
				FOR typEmployees IN curEmployees(varDeptName)
			/* Traversing through cursor */
				LOOP
				/* Updating salary of the current employee in the loop */
					UPDATE Employees 
						SET Salary = typEmployees.Salary *((100 + varIncrement)/100)
							WHERE CURRENT OF curEmployees;
				END LOOP;
				COMMIT;
			END IncrementDeptSal;

		PROCEDURE IncrementDeptSal(varDeptNo Number, varIncrement Number DEFAULT 1.10) IS
		/* Defining parameterized cursor to hold salary of all employees in a particular */
			CURSOR curEmployees (varDeptNo Number) IS
				SELECT Salary FROM Employees WHERE DeptNo = varDeptNo
					FOR UPDATE OF Salary;
			BEGIN
			/* Defining a For loop */
				FOR typEmployees IN curEmployees(varDeptNo)
			/* Traversing through cursor */
				LOOP
				/* Updating salary of the current employee in the loop */
					UPDATE Employees 
						SET Salary = typEmployees.Salary *((100 + varIncrement)/100)
							WHERE CURRENT OF curEmployees;
				END LOOP;
				COMMIT;
			END IncrementDeptSal;
		END;
	/

--Executing
EXEC EmpLib.IncrementDeptSal(3, 5);
EXEC EmpLib.IncrementDeptSal('HR Department', 3);

---test
select employeeno,deptno,salary from employees;