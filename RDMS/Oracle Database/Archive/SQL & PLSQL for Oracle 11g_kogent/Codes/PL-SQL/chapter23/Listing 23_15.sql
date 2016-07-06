begin
	for i in 1..10 loop
		IF(mod(i,2)=0) THEN
  			dbms_output.put_line('i is '||to_char(i));
 		end if;
	end loop;
end;
/
