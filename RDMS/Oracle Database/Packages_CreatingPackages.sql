---Just a demo,don't run
--Package spec
CREATE OR REPLACE PACKAGE ganeshLib AS 
		Author Varchar2(25) := 'Ganesh babu';
		Version Varchar2(5) := '1.0';

		PROCEDURE CalculateEmpLeaves(varEmployeeNo IN Varchar2, varLeaves OUT Number);
		PROCEDURE AccountCredit(varAccountNo Number, varCreditAmount Number);
		PROCEDURE IncrementDeptSal(varDeptNo Number, varIncrement Number DEFAULT 1.10);
		FUNCTION FetchAccountBal(varAccountNo IN Number) RETURN Number;
		FUNCTION SalOfDept(varDeptNo Number) RETURN Number;
END ShahLib;
/

--Package body
CREATE OR REPLACE PACKAGE BODY ganeshLib AS
		PROCEDURE CalculateEmpLeaves(varEmployeeNo IN Varchar2, varLeaves OUT Number) IS
		BEGIN
		/* Retrieving the number of leaves from EmployeeMuster. */
			SELECT COUNT(*) INTO varLeaves FROM EmployeeMuster 
				WHERE EmployeeNo = varEmployeeNo AND Attendance <> 'Present';
		END;

		PROCEDURE AccountCredit(varAccountNo Number, varCreditAmount Number) AS 
			varBalance Number; 
			varUpdatedBalance Number; 
		BEGIN 
		/* Defining SQL query to retrieve the current balance */
			SELECT CurrentBalance INTO varBalance FROM Accounts WHERE AccountNo = varAccountNo 
				FOR UPDATE OF CurrentBalance;
		/* Calculating the new balance */
			varUpdatedBalance := varBalance + varCreditAmount; 
		/* Updating current balance in the Accounts table */
			UPDATE Accounts SET CurrentBalance = varUpdatedBalance WHERE AccountNo = varAccountNo; 
		/* Making the changes permanent */
			COMMIT; 
			EXCEPTION 
			/* Defining an exception to handle new account opening */
				WHEN NO_DATA_FOUND THEN 
					INSERT INTO Accounts (AccountNo, CurrentBalance) 
						VALUES(varAccountNo, varCreditAmount); 
			/* Defining an exception to handle other errors */
				WHEN OTHERS THEN 
					ROLLBACK; 
			END AccountCredit;

		PROCEDURE IncrementDeptSal(varDeptNo Number, varIncrement Number DEFAULT 1.10) IS
		/* Defining a cursor to hold salary of all employees in a particular department */
		CURSOR curEmployees (varDeptNo Number) IS
			SELECT Salary FROM Employees WHERE DeptNo = varDeptNo
				FOR UPDATE OF Salary;
		BEGIN
		/* Defining a For loop */
			FOR typEmployees IN curEmployees(varDeptNo)
		/* Traversing through the loop */
			LOOP
			/* Updating salary of the current employee in the loop */
				UPDATE Employees SET Salary = typEmployees.Salary *((100 + varIncrement)/100)
					WHERE CURRENT OF curEmployees;
			END LOOP;
		/* Making the changes permanent */
			COMMIT;
		END IncrementDeptSal;

		FUNCTION FetchAccountBal(varAccountNo IN Number) RETURN Number IS 
			varCurrentBalance Number(12, 2);
		BEGIN
		/* Retrieving the current balance */
			SELECT CurrentBalance INTO varCurrentBalance FROM Accounts WHERE AccountNo = varAccountNo; 
			RETURN(varCurrentBalance); 
		END;

		FUNCTION SalOfDept(varDeptNo Number) RETURN Number IS
			varTotalSal Number;
		BEGIN
			varTotalSal := 0;
		/* Defining a For loop with an inline cursor */
			FOR typSal IN (SELECT Salary FROM Employees WHERE DeptNO = varDeptNo) 
			LOOP
			/* Calculating total salary */
				varTotalSal := varTotalSal + typSal.Salary;
			END LOOP;
			RETURN varTotalSal;
		END SalOfDept;
	END ganeshLib 
	/
---testing