desc employees;
select * from employees;

--getting the total salary of that deparmtent ID
create or replace function TotalDeptSalary
(varDepartmentID IN NUMBER)
return NUMBER IS
varTotalSalary NUMBER;
varBalance NUMBER;
begin
  /* Defining SQL query to retrieve the current balance */
    select sum(salary) into varTotalSalary from employees
    where department_id=varDepartmentID
    group by department_id;
  
  /* return the balance */
    return varTotalSalary;
 end TotalDeptSalary;
/

---test the functions
select TotalDeptSalary(30) from dual;

--check the table
select department_id,sum(salary) from employees
where department_id=30
group by department_id;


