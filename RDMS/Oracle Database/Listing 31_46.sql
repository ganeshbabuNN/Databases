create or replace view vw_adanalysis as
select enq.refcode,enq.enquiryno,enrl.rollno,fee.amount
from enquiry enq,feespaid fee,enrollment enrl
where enq.enquiryno = enrl.enquiryno
and enrl.rollno = fee.rollno;
/
