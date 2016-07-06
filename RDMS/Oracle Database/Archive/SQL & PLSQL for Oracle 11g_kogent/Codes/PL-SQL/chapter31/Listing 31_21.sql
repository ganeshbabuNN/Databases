create or replace procedure sumfee_crs(name varchar2) as
cursor c1 is
select rollno,sum(amount) samt from feespaid,course
where coursename = name
and course.coursecode = substr(to_char(rollno),1,2)
group by rollno;
begin
	for z in c1 loop
     		dbms_output.put_line(z.rollno||'   '||z.samt);
	end loop;
end sumfee_crs;
/
