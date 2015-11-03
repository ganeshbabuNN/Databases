DECLARE
 v_var varchar2(44) :='Hello world';
BEGIN
dbms_output.put_line(v_var);
Declare
  v_something Varchar2(40) :='Hello again';
begin
  dbms_output.put_line(v_something);
end;
EXCEPTION
 when no_data_found THEN 
  null;
END;