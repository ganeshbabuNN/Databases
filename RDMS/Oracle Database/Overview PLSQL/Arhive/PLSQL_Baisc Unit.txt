DECLARE
// declaring the variable can be using for using procedures ,functions, packages,triggers.
// use to declare the variable of its types
// this session is completely optionals.
--  v_var varchar2(10);
  v_var varchar2(10) = "Hello world";

BEGIN
//this is the executable session
--dbms_output.put_line('Hello world');
dbms_output.put_line(v_var);

EXCEPTION
// this session is completely optionals.
 when no_data_found THEN 
  null;
end;

END;