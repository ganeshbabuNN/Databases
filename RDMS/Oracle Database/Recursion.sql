Create function fact (N number) return number is
begin
	if N = 0 then
		return(1);
	else
		return(N * fact(N-1));
	end if;
end;
/
