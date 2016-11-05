declare
	cursor c1 is
	select car,sum(qty) sum_qty
	from carsales
	group by car
	order by car;
begin
 	for z in c1 loop
		dbms_output.put_line(z.car ||' '||z.sum_qty);
  	end loop;
end;
/
