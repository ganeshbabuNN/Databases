create or replace procedure amt_instdate as
cursor c1 is
select enquiryno eno,fname
from enquiry;
cursor c2 is
select enq.enquiryno eno,ins.rollno rno
from installment ins,enquiry enq,enrollment enr
where installmentstatus = 'N'
and installmentdate < sysdate
and ins.rollno = enr.rollno
and enr.enquiryno = enq.enquiryno;
z1 c1%rowtype;
z2 c2%rowtype;
begin
	for z1 in c1 loop
     		for z2 in c2 loop
           		if (z2.eno=z1.eno) then
              		dbms_output.put_line(z2.rno||'   '||z1.fname);
           		end if;
        	end loop;
   	end loop;
end amt_instdate;
/
