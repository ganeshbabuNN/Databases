SELECT employee_id,Salary FROM Employees WHERE department_id = 
				(SELECT department_id FROM Departments WHERE department_name = 'Sales');

select employee_id,salary from employees where department_id=80;

---open two session and run the A.B and click ok and observer the update
DECLARE
		varSalary Number(12,2);
		CURSOR curEmpSal IS 
			SELECT Salary FROM Employees WHERE department_id = 
				(SELECT department_id FROM Departments WHERE department_name = 'Sales') 
					FOR UPDATE OF Salary;
	BEGIN
		OPEN curEmpSal;
		LOOP
			FETCH curEmpSal INTO varSalary;
			EXIT WHEN curEmpSal%NOTFOUND;
			UPDATE Employees SET Salary = varSalary * 1.10 WHERE CURRENT OF curEmpSal;
		END LOOP;
		CLOSE curEmpSal;
	END;
	/
  
--open two SQL sessions and in each session issues and execute the A.b
SELECT employee_id,salary from employees

---Now on the sesion click on ROLLBACK and check the output.