
declare
  /* defining a Row type */
  typemployees Employees%ROWTYPE;
begin
  /* Assigin all the values from the existing table to the ROWTYPE */
  select * INTO typemployees FROM employees
  where employee_id IN (101);
  
  /* printing the console*/
  dbms_output.put_line('EmployeeID ' || typemployees.employee_id);
  dbms_output.put_line('FirstName ' || typemployees.first_name);
  dbms_output.put_line('LastName ' || typemployees.last_name);
  dbms_output.put_line('Email ' || typemployees.email);
  dbms_output.put_line('PhoneNumber ' || typemployees.phone_number);
  dbms_output.put_line('HireDate ' || typemployees.hire_date);
  dbms_output.put_line('JobID ' || typemployees.job_id);
  dbms_output.put_line('Salary ' || typemployees.salary);
  dbms_output.put_line('CommisionPCT ' || typemployees.commission_pct);
  dbms_output.put_line('DepartmentID ' || typemployees.department_id);
end;
/

---but it is exactly returning one row, if it more rows it returns the exceptions

