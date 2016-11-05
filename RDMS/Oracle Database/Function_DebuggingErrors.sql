-- for debugging errors for this functions
create or replace function TotalDeptSalary
(varDepartmentID IN NUMBER)
return NUMBER IS
varTotalSalary NUMBER;
varBalance NUMBER;
begin
  /* Defining SQL query to retrieve the current balance */
    select sum(salary) into varTotaSalary from employees
    where department_id=varDepartmentID
    group by department_id;
  
  /* return the balance */
    return varTotalSalary;
 end TotalDeptSalary;
/

---to veiw the compilations errors issues the following command
show ERRORS function TotalDeptSalary; 