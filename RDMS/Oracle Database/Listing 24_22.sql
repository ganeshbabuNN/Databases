declare
	cursor c1(pregion varchar2) is
	select car,region,qty
	from carsales
	where region=pregion;
	sumx number :=0;
begin
	for z in c1('n') loop
   		sumx := sumx+z.qty;
  	end loop;
	dbms_output.put_line(sumx);
	sumx := 0;
	for z in c1('s') loop
		sumx := sumx+z.qty;
  	end loop;
	dbms_output.put_line(sumx);
end;
/
