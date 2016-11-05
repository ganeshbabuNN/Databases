declare
	X number;
	cursor C1 is
	Select * from batch
	where coursecode = X;
begin
	X := 10;
	open c1;               		--A
	fetch c1 into z;      			--B
	X := 20;              			--C
          fetch c1 into z;			--D
End;
/      
