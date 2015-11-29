----with intializing and printing the console

declare
type typemployees is record
/* defining a record type */
(
employeeid employees.employee_id%TYPE,
employeename employees.first_name%TYPE,
hireDate  employees.hire_date%TYPE
);
/* declaring a variable of type typeemployees*/
 varEmployees typemployees;
begin
  /* initializing the variables of that record */
  varEmployees.employeeid :=1;
  varEmployees.employeename :='Ganesh Babu';
  varEmployees.hireDate :='01-OCT-2013';
  
  /* prininting to the console */
  dbms_output.put_line('EmployeeID ' || varEmployees.employeeid);
  dbms_output.put_line('EmployeeName ' || varEmployees.employeename);
  dbms_output.put_line('HireDate ' || varEmployees.hireDate);
end;
/
