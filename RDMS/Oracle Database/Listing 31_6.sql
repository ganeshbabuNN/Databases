CREATE or replace PROCEDURE calc_enq_month(monthno IN number, cnt OUT number) As
BEGIN
 	Select Count(enquiryno) into cnt from enquiry
 	where to_number(to_char(enquirydate,'mm')) = monthno;
END;
/
