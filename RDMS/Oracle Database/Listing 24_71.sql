declare
	x number;
	y number;
begin
	update pcm set maths=maths+1 where rollno=1
	returning physics, maths into x,y;
	dbms_output.put_line(x);
	dbms_output.put_line(y);
end;
/
