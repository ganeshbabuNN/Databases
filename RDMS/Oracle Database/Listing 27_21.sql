create or replace type body complex6 as 
overriding member procedure  print is
begin
	dbms_output.put_line('method  is implemented '||rl||' '||im);
end;
end;
/