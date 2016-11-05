create or replace procedure batchname_avgamt_more as
cursor c1 is
select avg(netincome) avgamt,batchcode from batch
group by batchcode
having avg(netincome)>10000;
begin
	for z in c1 loop
     		dbms_output.put_line(z.batchcode||'    '||z.avgamt);
	end loop;
end batchname_avgamt_more;
/
