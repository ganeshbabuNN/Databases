create or replace procedure batch_avgamt as
cursor c1 is
select avg(netincome) avgamt,batchcode
from batch
group by batchcode;
begin for z in c1 loop
	dbms_output.put_line(z.batchcode||'    '||z.avgamt);  
end loop;
end batch_avgamt;
/
