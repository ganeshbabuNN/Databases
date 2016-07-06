create or replace function get_something
return varchar2
as
begin
 return 'ganesh';
end;
/

--using the variable
declare
  v_name varchar2(10);
begin
  v_name := get_something;
  dbms_output.put_line(v_name);
end;
/