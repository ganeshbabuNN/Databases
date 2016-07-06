declare
	x varchar2(30);
begin
	x :=dbms_transaction.local_transaction_id (true);
	dbms_output.put_line(x);
end;
/
