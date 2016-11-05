create or replace function tot_feepaid(name varchar2)return number as
eno number(8);
rno number(8);
samt number;
begin
	select enquiryno
   	into eno
   	from enquiry
   	where fname = name;
   	select sum(amount),f.rollno
   	into samt,rno
   	from feespaid f,enrollment e
   	where enquiryno = eno
   	and f.rollno = e.rollno
   	group by f.rollno;
   	return(samt);
end tot_feepaid;
/
