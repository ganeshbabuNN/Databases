<< outer>>
for i in 1..30 loop
	for k in 1...100 loop
		x := k * ...;
		exit outer when (x > 30); 
	end loop;
end loop outer;
