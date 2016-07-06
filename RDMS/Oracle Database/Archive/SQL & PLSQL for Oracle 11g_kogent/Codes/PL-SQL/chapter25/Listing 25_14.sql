declare
	type studentmarks is table of integer;
	x studentmarks;
	y studentmarks;
begin
	if x is null then			--CONDITION YIELDS TRUE
		dbms_output.put_line('true');
     end if;
end;
/
