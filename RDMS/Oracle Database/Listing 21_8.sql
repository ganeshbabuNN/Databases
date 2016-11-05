declare
	amt number(10,2);
	i number;
begin
	amt := 2000;
	i := 1;
	while (i<=10)  loop
		amt := (amt * 15/100) + amt;
		i := i +1;
	end loop;
end;
/
