declare
type curtype is ref cursor;
batch_cur curtype;
course_cur curtype;
enquiry_cur curtype;
begin
	open  batch_cur for
		select * from batch;
	open  course_cur for
	            select * from course;
	open  enquiry_cur for
	            select * from enquiry;
end;
/
