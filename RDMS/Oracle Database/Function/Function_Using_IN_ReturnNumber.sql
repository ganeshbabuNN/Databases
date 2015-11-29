desc employeeaccounts;
select * from employeeaccounts;

--getting the balance of that employee
create or replace function EmpBalance
(varEmployeeId IN NUMBER)
return NUMBER IS
varCurrentBalance NUMBER(12,2);
begin
  /* Defining SQL query to retrieve the current balance */
    select current_balance into varCurrentBalance from employeeaccounts
    where employee_ID=varEmployeeId;
  
  /* return the balance */
    return varCurrentBalance;
 end EmpBalance;
/

---test the functions
select EmpBalance(101) from dual;


