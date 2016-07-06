create procedure test(a in number,b in number,c out nocopy number) as
begin
	c:= a+b;
end;
/
