--for updating the salary
select employee_id,first_name,last_name,salary,department_id from employees
where department_id=90;

--get the privlege for the flashback
CONNECT SYS/Ga55word AS SYSDBA
	GRANT EXECUTE ON SYS.DBMS_FLASHBACK To hr;

--update the salary and check if the salary has been changed
update employees
set salary =salary *0.13
where department_id=90;

--issue the commit
commit;

---now they want to see the previous salary of that department
--enable the flash features and check the previous salary
EXECUTE DBMS_FLASHBACK.ENABLE_AT_TIME(SYSDATE-2);
/*
the DBMS_FLASHBACK.ENABLE_AT_TIME() procedures perform as flash 
to the particular date. this procedures accepts a datatime as a parameter
SYSDATE-2 is passed to the procedures which means two days back
*/

--for disableing the features
EXECUTE DBMS_FLASHBACK.DISABLE();