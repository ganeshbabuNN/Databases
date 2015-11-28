--debugging errors for this procedure
create or replace procedure creditAmout
(varEmployeeId IN NUMBER,varCreditAmount in NUMBER)
as
varBalance Number;
VarUpdateBalance number;
begin
  /* Defining SQL query to retrieve the current balance */
  select current_balance INTO balance from employeeaccounts
  where EMPLOYEE_ID=EmployeeId;
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

--to get the errors of this procedures
SHOW ERROS procedure creditAmout;