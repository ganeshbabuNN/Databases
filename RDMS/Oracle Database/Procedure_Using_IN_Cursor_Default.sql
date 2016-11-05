desc employees;
--incrementto those departments
Create or replace procedure DepartmentLevelIncrement(
varDeptNo IN NUMBER,
varIncrementAmount IN NUMBER Default 1.10) 
IS
/* Defining a cursor to hold salary of all employees in a particular department */
  cursor curEmployees(varDeptNo number) IS
  select salary from employees where department_ID=varDeptNo
  for update of salary;
begin
/* Defining a For loop */
  for typEmployees IN curEmployees(varDeptNo)
  /* Traversing through the loop */
  LOOP
    /* Updating salary of the current employee in the loop */
    update employees
    set salary = typEmployees.salary*((100+varIncrementAmount)/100)
    where current of curEmployees; --if this is not there, it update all the rows of that department
  END LOOP;
    /* Making the changes permanent */
  commit;
end;
/

---test the procedures
execute DepartmentLevelIncrement(30,7);
execute DepartmentLevelIncrement(10);-- for default

--check the employee in that department
select first_name,salary,department_id from employees where department_id=30;
  

