declare
  	cursor c1 is
  	select expname
  	from expmaster
  	where exptype = 'T1'
  	union
  	select expname
  	from expmaster
  	where exptype = 'T2';
begin
  	for z in c1 loop
      	dbms_output.put_line(z.expname);
  	end loop;
end;
/
