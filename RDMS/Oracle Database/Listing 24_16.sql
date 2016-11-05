declare
	cursor c1 is
	select cname cn,sdate,price from shares;
	x number:=0;
	y number:=0;
	countx number:=0;
	avgx number := 0;
	county number:=0;
	avgy number := 0;
begin
 	for z in c1 loop
 		if(z.cn='acc') then
   			x := x + z.price;
   			countx := countx + 1;
   		end if;
 		if(z.cn='tata') then
   			y := y + z.price;
   			county := county + 1;
   		end if;
	end loop;
	avgx := x/countx;
	avgy := y/county;
	dbms_output.put_line(avgx);
	dbms_output.put_line(avgy);
end;
/
