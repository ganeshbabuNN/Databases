create or replace function get_something
return number
as
begin
 return 1;
end;



--displaying the output for the screen using AB
begin
  dbms_output.put_line(get_something);
end;
