	amt number(10,2);
	i  number;
begin
	amt :=2000;
	i := 1;
	LOOP
		amt := amt * 15/100 + amt;
		i := i + 1;
	EXIT WHEN (i >14);
	END LOOP;
end;
/
