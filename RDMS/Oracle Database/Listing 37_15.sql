begin
	dbms_transaction.begin_discrete_transaction;
	update child set c=56 where c=29;
	commit;
end;
/
