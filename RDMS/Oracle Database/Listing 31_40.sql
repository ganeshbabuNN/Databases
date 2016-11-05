create or replace procedure stat_feecollected_crs (cname varchar2)as
tmpamt number;
i number;
inc number;
incamt number;
cnt number;
begin
	i := 0;
  	tmpamt := 0;
  	inc := 1000;
  	while i < 20000 loop
      	select count(*) into cnt from feespaid,course
      	where course.coursename = cname
      	and to_char(course.coursecode) = substr(to_char(rollno),1,2)
	      	and amount between i and inc;
      	dbms_output.put_line(i||'    '||inc||'    '||cnt);
      	i := inc+1;
      	tmpamt := tmpamt + 5000;
      	inc := tmpamt;
  	end loop;
end stat_feecollected_crs;
/
