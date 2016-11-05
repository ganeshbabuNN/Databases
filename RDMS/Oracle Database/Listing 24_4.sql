set serveroutput on
create or replace Procedure displaycoursename (ccode IN number ) as
cname course.coursename%type;
begin
	select coursename	
	into cname from course
	where coursecode = 10;
	dbms_output.put_line( ' The course name is ' || cname);
exception
When no_data_found then 
	dbms_output.put_line('The required course is not present');
When too_many_rows then 
	dbms_output.put_line('The required coursecode has many names');
end;
/
