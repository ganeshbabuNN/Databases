create or replace procedure yearlysum(year varchar2)as
   cursor c1 is
   select sum(amount) income,to_char(feespaiddate,'YY') paydt
   from feespaid
   group by to_char(feespaiddate,'YY');
   cursor c2 is
   select sum(amount) expenditure,to_char(expdate,'YY') expdt
   from expenditure
   group by to_char(expdate,'YY');
   paysum number;
   expsum number;
begin
   for z1 in c1 loop
       if z1.paydt = to_char(year) then
          paysum := z1.income;
       end if;
   end loop;
   for z2 in c2 loop
       if z2.expdt = to_char(year) then
          expsum := z2.expenditure;
       end if;
   end loop;
   dbms_output.put_line('year'||'    '||'expenditure'||'    '||'income');
   dbms_output.put_line(to_char(year)||'    '||expsum||'    '||paysum);
end yearlysum;
/
