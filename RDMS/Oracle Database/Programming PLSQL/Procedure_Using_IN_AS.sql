desc employeeaccounts;
select * from employeeaccounts;

--crediting the new amount to that employee account
create or replace procedure creditAmout
(varEmployeeId IN NUMBER,varCreditAmount in NUMBER)
as
varBalance Number;
VarUpdateBalance number;
begin
  /* Defining SQL query to retrieve the current balance */
  select current_balance INTO varBalance from employeeaccounts
  where EMPLOYEE_ID=varEmployeeId;
  /* Calculating the new balance */
  VarUpdateBalance := varBalance + varCreditAmount;
  /* Updating current balance in the employeeaccounts table */
  update employeeaccounts
  set CURRENT_BALANCE=VarUpdateBalance
  where EMPLOYEE_ID=varEmployeeId;
  /* Making the changes permanent */
  commit;
exception
/* Defining an exception to handle new account opening */
  when no_data_found then
    insert into employeeaccounts(employee_id,current_balance) 
      values(varEmployeeId,varCreditAmount);
/* Defining an exception to handle other errors */
   When others then
    rollback;
end creditAmout;
/

---test the procedures
exec creditAmout(101,2000);
exec creditAmout(111,2000);---getting the exception
execute creditAmout(102,111111111111); -- for rollback

--check the table
select * from employeeaccounts;  

