create or replace function feediff_rollno (prollno number)
return number is
diff number;
begin
	select max(coursefee)-sum(fee.amount)
	into diff
	from feespaid fee,batch
	where substr(to_char(fee.rollno),1,2)=substr(to_char(batchcode),1,2)
	and rollno = prollno
	group by rollno,batchcode;
	return(diff);
end feediff_rollno;
/
