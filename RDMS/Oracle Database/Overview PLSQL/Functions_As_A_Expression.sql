create or replace function get_something
return number
as
begin
 return 4;
end;
/

--functions as part of expression
declare
  v_name number;
begin
  v_name := get_something * 1.5;--as a expression
  dbms_output.put_line(v_name/2); --this can be also a expression
end;
/