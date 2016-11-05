declare
   vName VARCHAR2(10) := 'ganesh';
   cName CHAR(10) := 'ganesh';
begin
   if vName=cName then
    dbms_output.put_line('Variable Matched');
  else
    dbms_output.put_line('Variable Not matched');
  end if;
end;