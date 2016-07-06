<< outer >>
	for i in 1.....25 loop 
<< inner >>
	for i in 1.....10 loop
		statement a ;
		x := outer.i;
	end loop;
end loop outer;
