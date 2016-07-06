create or replace procedure monthlysum as
cursor c1 is
select avg(amount)amt,to_char(feespaiddate,'MON') paydt
from feespaid
group by to_char(feespaiddate,'MON');
cursor c2 is
select avg(amount)amt,to_char(expdate,'MON') expdt
from expenditure
group by to_char(expdate,'MON');
x varchar2(6);
y varchar2(6);
indt varchar2(10);
expdt varchar2(10);
begin
	for z1 in c1 loop
     		x := z1.paydt;
	  	select nvl(month,null) into indt from month_avgincexp where 				month=z1.paydt;
     		if (indt <> ' ') then
           		update month_avgincexp
           		set income = nvl(income,0)+z1.amt
           		where month_avgincexp.month = x;
     		end if;
	end loop;
     	for z2 in c2 loop
     		y := z2.expdt;
  		select nvl(month,null) into expdt from month_avgincexp where 				month=z2.expdt;
     		if (expdt <> ' ') then
           		update month_avgincexp
           		set expenditure = nvl(expenditure,0)+z2.amt
           		where month_avgincexp.month = y;
     		end if;
	end loop;
end monthlysum; 
/
