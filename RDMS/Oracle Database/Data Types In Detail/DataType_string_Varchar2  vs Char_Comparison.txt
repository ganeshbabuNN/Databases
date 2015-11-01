declare
   vName VARCHAR2(10) := 'ganesh';
   cName CHAR(10) := 'ganesh';
begin
   dbms_output.put_line 
   ('vName is '|| length(vName) || ' cName is '|| length(cName));
end;


--by default char are righpaded,if we change the code it is used.

declare
   vName VARCHAR2(10) := 'ganesh    ';
   cName CHAR(10) := 'ganesh';
begin
   dbms_output.put_line 
   ('vName is '|| length(vName) || ' cName is '|| length(cName));
end;
/