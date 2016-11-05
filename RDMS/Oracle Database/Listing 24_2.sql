create or replace procedure displaycoursename ( ccode in number ) is 
	cname course.coursename%type;
begin
	Select coursename
	into  cname from  course
	where coursecode = ccode;
	dbms_output.put_line ( ' The name of course is ' || cname);
end;
/
