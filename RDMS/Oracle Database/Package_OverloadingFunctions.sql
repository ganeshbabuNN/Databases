---spec
CREATE OR REPLACE PACKAGE NewEmpLib IS
		FUNCTION SalOfDept(varDeptNo Number) RETURN Number; 
		FUNCTION SalOfDept(varDeptNo Number, varType Varchar2) RETURN Number; 
	END;
	/

--spec
CREATE OR REPLACE PACKAGE BODY NewEmpLib IS
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

		FUNCTION SalOfDept(varDeptNo Number, varType Varchar2) RETURN Number IS
			varSal Number;
			BEGIN
				varSal := 0;
				IF varType = 'H' THEN
					SELECT MAX(Salary) INTO varSal FROM Employees 
						WHERE DeptNO = varDeptNo;
				ELSE
					SELECT MIN(Salary) INTO varSal FROM Employees 
						WHERE DeptNO = varDeptNo;
				END IF;
				RETURN varSal;
			END SalOfDept;
		END;
	/

--test
select newEmplib.saleofdept(2) from dual;

select new newemplib.saleofDept(2,'H') from dual;