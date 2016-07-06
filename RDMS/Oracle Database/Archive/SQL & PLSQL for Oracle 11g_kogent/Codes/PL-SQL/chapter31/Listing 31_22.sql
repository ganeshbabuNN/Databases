create or replace function diff_feexp(bcode number) return number as
rno number(8);
eamt number;
dif number;
begin
	select expectedincome
   	into eamt from batch
   	where batchcode = bcode;
   	select substr(to_char(rollno),1,5),eamt-sum(feespaid.amount)
   	into rno,dif
   	from feespaid
   	where substr(to_char(rollno),1,5) = bcode
   	group by substr(to_char(rollno),1,5);
   	return (dif);
end diff_feexp;
/
