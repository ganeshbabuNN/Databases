declare
	A number;
	B number;
	C number;
	procedure sum (X IN number, Y IN number, Z OUT number) is 
	begin
              	Z := Z+10; 			--Null Values
               	Z := X+10; 			-- Z is initialized
		Z := X+Y+Z;
	end;
begin
	A:=5;
	B:=10;
   	C:=12;
	sum(A,B,C);
	dbms_output.put_line (to_char(C));
end;
/
