declare
  	cursor c1(exptp varchar2) is
  	select e.expcode,e.expdate,e.amount,e.bankname,e.remark
  	from expenditure e,expmaster ex
  	here ex.exptype = exptp
  	and ex.expcode = e.expcode;
begin
  	for z in c1('Xerox') loop
   		dbms_output.put_line(z.expcode||' '||z.expdate||' '||z.amount||' 				'|| z.bankname||' '||z.remark);
  	end loop;
 end;
/