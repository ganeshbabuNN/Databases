create or replace function totenq_course(name varchar2) return number as
tenq number;
begin
  	select count(*)
  	into tenq
  	from enquiry,course
  	where course.coursename=name
  	and course.coursecode=enquiry.coursecode;
  	return(tenq);
end totenq_course;
/
