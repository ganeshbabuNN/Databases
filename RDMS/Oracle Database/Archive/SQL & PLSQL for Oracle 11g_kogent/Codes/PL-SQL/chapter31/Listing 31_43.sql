create or replace function batch_5maxinc return number is
cursor c1 is
select batchcode,netincome
from batch
order by netincome desc;
bcode number(5);
cnt number;
begin
	cnt := 0;
  	for z in c1 loop
      	cnt := cnt + 1;
      	if cnt = 5 then
         		bcode := z.batchcode;
      	end if;
  	end loop;
  	return(bcode);
end batch_5maxinc;
/
