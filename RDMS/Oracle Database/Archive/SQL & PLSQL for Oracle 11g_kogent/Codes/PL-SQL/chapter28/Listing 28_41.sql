create or replace procedure del_enq_crs(coursenm in varchar2) as
begin
 	delete enquiry
 	where coursecode
 	in
 	(select coursecode
 	from course
 where coursename = coursenm);
end del_enq_crs;

/