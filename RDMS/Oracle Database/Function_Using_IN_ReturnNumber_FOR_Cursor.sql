desc employees;
select * from employees;

--getting the total salary of that deparmtent ID using FOR LOOP
create or replace function TotalDeptSalary
(varDepartmentID IN NUMBER)
return NUMBER IS
varTotalSalary NUMBER;
begin
  varTotalSalary :=0;
  /* Defining for loop with a inline cursor*/
  for TypSal IN (select salary from employees
  where department_id=varDepartmentID)
  LOOP
   /* calculating Total Salary*/
   varTotalSalary :=varTotalSalary +typsal.salary;
  END LOOP;
  return varTotalSalary;
 end TotalDeptSalary;
/

---test the functions
select TotalDeptSalary(60) from dual;

--check the table
select department_id,sum(salary) from employees
where department_id=60
group by department_id;


