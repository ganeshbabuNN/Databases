--if else statment

declare
  v_name varchar2(30):= 'GANESH';
begin
  if v_name ='ganesh'
  then
   dbms_output.put_line('name=GANESH');
  ELSIF v_name = 'GANESH'
  then
    dbms_output.put_line('name=ganesh');
  else
    dbms_output.put_line('i don t know what name is ');
  END if;
end;
/



--if statment
declare
  v_name varchar2(30):= 'GANESH';
begin
  if v_name ='ganesh'
  then
   dbms_output.put_line('name=GANESH');
   else
    dbms_output.put_line('i don t know what name is ');
  END if;
end;
/

--full text example
DECLARE
	/* Declaration of memory variables and constants to be used in the Execution section.*/
	varEmployeeID employees.employee_id%TYPE;
  varEmpValid char(1) :='N';
  varEmpStatus char(1);
	BEGIN
	/* Accepting the EmployeeNo */
	 	varEmployeeID :=&EmployeeID;
	/* Validating the existence of such an employee.*/
  select 'Y' into varEmpValid from employees
  where employee_id=varEmployeeID;
  if varEmpValid='Y' then
		/* Accepting the Employee Attendance */
     varEmpStatus := '&Attendence';	
  end if;
	/* Inserting a record in the EmployeeMuster table if the employee number is valid.*/
  if varEmpStatus is not null then
  if varEmpStatus ='P' then
    insert into employeemuster (employee_id,muster_date,ATTENDENCE,intime)
    values(varEmployeeID,sysdate,'Present', CURRENT_TIMESTAMP);
  elsif varEmpStatus ='S' then
    insert into employeemuster (employee_id,muster_date,ATTENDENCE,intime)
    values(varEmployeeID,sysdate,'Sick Leave', CURRENT_TIMESTAMP);
  else
    insert into employeemuster (employee_id,muster_date,ATTENDENCE,intime)
    values(varEmployeeID,sysdate,'Absent', CURRENT_TIMESTAMP);
   END IF;
  END IF;
END;
/

