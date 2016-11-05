declare
  	cursor c1(ccode number) is
  	select *
  	from batch
  	where coursecode = ccode;
 begin
  	for z in c1(10) loop
   		dbms_output.put_line(z.batchcode||’ ‘||z.coursecode||’ ‘||
    		z.startingdate||’ ‘||z.coursefees||’ ‘||z.netincome||’ ‘||
    		z.expectedincome||’ ‘||z.lastno);
  	end loop;
 end;
/