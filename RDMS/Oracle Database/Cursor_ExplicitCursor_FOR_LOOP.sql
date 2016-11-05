DECLARE
	/* Cursor Declaration. */
		CURSOR curEmployee is Select employeeno,firstname,lastname,salary from employees;
	/* Memory variables to hold the username and password. */
  vUserName employees.username%TYPE;
  vPassword employees.password%TYPE;		
	BEGIN
	/* Using a For Loop. */
   for typEmployees IN curEmployee
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
--it automatically fetches the data retrieved by the cursor into the record set.
--It implicity declares a%ROWTYPE variable, also use it as LOOP index.
--Open a Cursor
--Read Cursor
--Close the cursor automatically when all records have been processed.

in this commands such as OPEN, FETCH and close are not required.

*/