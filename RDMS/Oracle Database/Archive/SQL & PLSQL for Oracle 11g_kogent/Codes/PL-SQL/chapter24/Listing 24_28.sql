if c1%isopen then
	dbms_output.put_line ( ' cursor already opened ' );
else
	open c1;
end if;
