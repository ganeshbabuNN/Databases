declare
	type phonearray is varray(5) of  varchar2(20);
	type stdarray is varray(5) of  varchar2(20);
	x phonearray := phonearray (10, 20);
	y phonearray := phonearray ();
	z stdarray := stdarray (30, 40);
begin
	x := y;					--x becomes null
end;
/
