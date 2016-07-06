declare
	x number;
	y number;
begin
	insert into pcm values(5, 'suhas',87,96,94)
	returning physics, maths into x,y;
	dbms_output.put_line(x);
	dbms_output.put_line(y);
end;
