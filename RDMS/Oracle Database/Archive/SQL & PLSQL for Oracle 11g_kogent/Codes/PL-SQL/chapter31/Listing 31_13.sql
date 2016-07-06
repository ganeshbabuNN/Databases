create or replace function crs_maxinc return varchar2 as
name varchar2(15);
begin
	select coursename
    	into name
    	from batch,course
    	where course.coursecode = batch.coursecode
    	and netincome =
    	(select max(netincome)
    	from batch);
    	return(name);
end crs_maxinc;
/
