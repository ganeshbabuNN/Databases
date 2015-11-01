syntax
--specification
create or replace package my_package
as
 function get_something
 return number;

 procedure do_something;
end;
/

--implementation of the spec is a body
create or replace package body my_package
as
function get_something
return number
as
begin
 return 1;
end;
procedure do_something
as
begin
 insert into log_table(date_time,msg) values(sysdate,'this is a message');
end;
end;
/

---call that procedures and functions of that package.
begin
  my_package.do_something;
  dbms_output.put_line(my_package.get_something);
end;
/