declare 
pragma autonomous_transaction; 
begin 
	insert into z values(0,0); 
	commit;  				--end of autonomous transaction 1 
	insert into z values(0,0);  		--2nd autonomous transaction begins 
	savepoint save1; 
	insert into z_copy values(3,6); 
	rollback to save1; 
	commit; 
end; 
/
