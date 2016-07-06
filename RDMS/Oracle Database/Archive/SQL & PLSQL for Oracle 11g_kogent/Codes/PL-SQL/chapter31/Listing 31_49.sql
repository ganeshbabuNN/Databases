create or replace view vw_enqenrl_student as
select enq.enquiryno,fname,rollno
from enquiry enq,enrollment enrl
where enq.enquiryno = enrl.enquiryno
/
