create or replace type body complex4 as 
overriding member procedure print is
begin
	dbms_output.put_line(' the real part is '||rl||' the imaginary part 			'||im);
end print;
end;
/
