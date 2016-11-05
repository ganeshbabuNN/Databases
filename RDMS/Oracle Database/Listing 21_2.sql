declare
	mn number;
	cursor c1 is 
	select amount, feespaiddate from feespaid;
	amount number;
	spaydate char(10);
	procedure sum_n_sub(a in number, b in number, c out number, d out number) 			is e number:= 0;
begin
	c := a+b;
	d := a-b;
	return;
end; 						-- end of proc sum_n
						
begin
	for z in c1 loop
		spaydate := to_char( z. feespaiddate, 'dd-mm-yyyy');
     		mn := to_number (substr(spaydate,4,2));
     		update month_collection
     		set total = total + z.amount
     		where mon = mn;
     		if sql%notfound then
           		insert into month_collection values (mn, z.amount);
     		end if;
	end loop;
sum_n_sub(3,1,x,y);
sum_n_sub(m,n,x,y);
end;
/
