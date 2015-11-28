--declaring a Explicit Cursor
declare 
  cursor curEmployee is select employee_id,first_name,last_name from employees;
begin
  
end;


--Opening 
declare 
  cursor curEmployee is select employee_id,first_name,last_name from employees;
begin
  open curEmployee;
end;


--fetching the cursor
declare 
  vID employees.employee_id%TYPE;
  vFirstName employees.first_name%TYPE;
  vLastName employees.last_name%TYPE;
  cursor curEmployee is 
  --declared the cursor
  select employee_id,first_name,last_name from employees
  where employee_id=100;
begin
  --opening the cursor
  open curEmployee;  
   -fetching the cursor
  FETCH curEmployee INTO vID,vFirstName,vLastName;
end;

--close the cursor
declare 
  vID employees.employee_id%TYPE;
  vFirstName employees.first_name%TYPE;
  vLastName employees.last_name%TYPE;
  
  cursor curEmployee is 
  select employee_id,first_name,last_name from employees;
begin
  open curEmployee;
  LOOP
  FETCH curEmployee 
    INTO vID,vFirstName,vLastName;
    --exit when there is not rows
    EXIT WHEN curEmployee%NOTFOUND;
    --displaying the output
  dbms_output.put_line('EmployeeNumber '||vID);
  dbms_output.put_line('EmployeeNumber '||vFirstName);
  dbms_output.put_line('EmployeeNumber '||vLastName);
  dbms_output.put_line('----------------------------');
  END LOOP;
  --close the cursor
  close curEmployee;
end;
