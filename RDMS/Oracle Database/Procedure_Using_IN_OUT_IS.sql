---check the table
select * from employeemuster;

--getting the status of leave of that employees
create or replace procedure calcempleaves(
VarEmployeeID in varchar2,varLeaves OUT number)IS
begin
  /* retrive the no of leaves from the employeemuster */
  select count(*) INTO varLeaves from employeemuster
    where employee_id=varemployeeID and ATTENDENCE <>'Present';
end;
/
--test the procedures using SQL as;
VARIABLE varNoOfVariable number;
exec calcempleaves( 101,:varNoOfVariable);
PRINT varNoOfVariable;
/

--test the procedures using PL/SQL program as;
declare
  varNoOfLeaves number;
  varEmployeeID number;
begin
   varEmployeeID :=&Employee_ID;
   
   /* pass the variable to the procedure*/
    calcempleaves(varEmployeeID,varNoOfLeaves);
    
    dbms_output.put_line('Employee No: '|| varEmployeeID || 
                          ' has taken ' || varNoOfLeaves ||
                          ' Leaves till date');
end;
/



