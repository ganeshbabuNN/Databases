declare
  	cursor c1 (exptp varchar2)is
  	select sum(exp.amount) samt from expenditure exp, expmaster exm
	where exp.expcode=exm.expcode and exptype='CASH';
begin
   	for z in c1(10) loop
       	dbms_output.put_line(z.samt);
   	end loop;
end;
/
