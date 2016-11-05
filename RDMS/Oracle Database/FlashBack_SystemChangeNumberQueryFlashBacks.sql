---exeucte the flashback for SCN
VARIABLE CurrentSCN NUMBER
EXECUTE :CurrentSCN := DBMS_FLASHBACK.GET_SYSTEM_CHANGE_NUMBER();

--print the SCN
print currentSCN;

--for updating the salary
select employee_id,first_name,last_name,salary,department_id from employees
where department_id=90;

--get the privlege for the flashback
CONNECT SYS/Ga55word AS SYSDBA
	GRANT EXECUTE ON SYS.DBMS_FLASHBACK To hr;

--update the salary and check if the salary has been changed
update employees
set salary =salary *0.1
where department_id=90;

---issue the commit
commit;

--now execute the flashback queries execute the procedures and check the salary
EXECUTE DBMS_FLASHBACK.ENABLE_AT_SYSTEM_CHANGE_NUMBER(:CurrentSCN);

--disable if required
EXECUTE DBMS_FLASHBACK.DISABLE();