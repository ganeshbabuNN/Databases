---create the two tables
drop table transactions;
create table transactions (
transactionno number(10) not null,
accountno number(10),
transactiondate date,
particulars varchar2(25),
transactiontype char(2),
amount number(12,2)
);

drop table transactionslog;
create table transactionslog (
transactionno number(10) not null,
accountno number(10),
transactiondate date,
particulars varchar2(25),
transactiontype char(2),
amount number(12,2),
status varchar2(15)
);

--check the employee table
select * from employees;

DECLARE
		varTransactionNo Number(20);
		varTransactionLogNo Number(20);
		varAccountNo Number(20);
		varTransactionAmount Number(8,2);
		varCurrentBalance Number(8,2);

	BEGIN
		varAccountNo := &AccountNo;
		varTransactionAmount := &Amount;

	/* Generating a transaction number. */
		SELECT MAX(TransactionNo) + 1 INTO varTransactionNo FROM Transactions;
		IF varTransactionNo IS NULL THEN
			varTransactionNo := 1;
		END IF;

	/* Generating a transaction log number. */
		SELECT MAX(TransactionNo) + 1 INTO varTransactionLogNo FROM TransactionsLog;
		IF varTransactionLogNo IS NULL THEN
			varTransactionLogNo := 1;
		END IF;

	/* Logging the transaction. */
		INSERT INTO TransactionsLog(TransactionNo, AccountNo, TransactionDate, Particulars, TransactionType, Amount) VALUES(varTransactionLogNo, varAccountNo, SYSDATE, 'Self Withdraw', 'Dr', varTransactionAmount);

	/* Defining a savepoint for rollbacks. */
		SAVEPOINT WithdrawalTrans;

	/* Recording the transaction. */
		INSERT INTO Transactions(TransactionNo, AccountNo, TransactionDate, Particulars, TransactionType, Amount) VALUES(varTransactionNo, varAccountNo, SYSDATE, 'Self Withdraw', 'Dr', varTransactionAmount);

	/* Updating the current balance. */
		UPDATE employees 
			SET salary = salary - varTransactionAmount 
				WHERE employee_id = varAccountNo;

	/* Retrieving the current balance after update. */
		SELECT salary INTO varCurrentBalance FROM employees WHERE employee_id = varAccountNo;

	/* Checking if current balance falls under 500. */
		IF varCurrentBalance < 500 THEN 
		/* Undo the withdrawal transaction completely. */
			ROLLBACK To SAVEPOINT WithdrawalTrans;
		/* Updating the TransactionsLog table. */
			UPDATE TransactionsLog SET Status = 'Failure'
				WHERE TransactionNo = varTransactionLogNo;
		ELSE
		/* Making the changes permanent. */
			COMMIT;
		/* Updating the TransactionsLog table. */
			UPDATE TransactionsLog SET Status = 'Success'
				WHERE TransactionNo = varTransactionLogNo;
		END IF;
	END;
	/
  
----testing
--- for success and test
update employees
set salary =13558.9
where employee_id=100;

--for failure and test
update employees
set salary =5000
where employee_id=100;--

select * from transactions;
select * from transactionslog;

/*
-After the record is inserted in the transaciton table and the employee table is updated, a savepoint called withdrawalTrans is created.
-This is done so that if the current balance check fails then the entire withdrawal transaction i,e INSERT INTO Transactions and UPDATE accounts can be rolled back. However, the data that is inserted int the transaction log table is not rolled back as the savepoint is created after the data is inserted in the log table.
-To verify the PL/SQL program has achieved what it was suppose to, execute the following quereis/program and look at the output.

*/
