create or replace view vw_incforrefcode as
select sum(amount)sumamt,refcode
from vw_adanalysis
group by refcode;
create or replace procedure addanalysis as
cursor c1 is
select medianame,amount expenditure,sumamt income
from advertisement adv,vw_incforrefcode vw
where adv.refcode = vw.refcode(+);
begin
	for z in c1 loop
     		dbms_output.put_line(z.medianame||'    '||
             z.expenditure||'    '||z.income);
  	end loop;
end addanalysis;
/
