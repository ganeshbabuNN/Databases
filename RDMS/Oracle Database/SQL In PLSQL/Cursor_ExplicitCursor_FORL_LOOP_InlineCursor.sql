DECLARE
	/* Memory variables to hold the username and password. */
  vUserName employees.username%TYPE;
  vPassword employees.password%TYPE;		
	BEGIN
	/* Using a For Loop within inline cursor -it declares cursor internally */
   for typEmployees IN (Select employeeno,firstname,lastname,salary from employees)
   LOOP
    /* Generating Usernames and Passwords. */
		vUserName :=SUBSTR(typEmployees.firstname,-2,2)||SUBSTR(typEmployees.lastname,1,2);
    vPassword :=SUBSTR(typEmployees.firstname,1,4)||SUBSTR(typEmployees.lastname,-1,2);
		/* Updating Employees table with the generated values. */
		update employees
    set username = vUserName,password=vPassword
    where employeeno=typEmployees.employeeno;
    --close the loop
    END LOOP;    
    /* Making the changes permanent. */
    COMMIT;
END;
/

/*
-An inline cursor is a cursor that is not delcared in the DECLARE section but the cursor definitions is included in the FOR LOOP

*/