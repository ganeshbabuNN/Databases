declare
	A number;
	B number;
	C number;
	procedure sum (X IN number,Y IN number, Z OUT number) is
	begin
		Z := X+Y;
	end;
begin
	A:=5;
	B:=10;
	sum(A,B,C);  --A
	dbms_output.put_line (to_char(C));	-- prints value 15
end;
/
