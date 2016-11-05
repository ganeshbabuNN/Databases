create or replace procedure add3(x1 in number,x2 in number,x3 in number,y out number) as
 begin
 y:=x1+x2+x3;
 end;
the procedure can be called using following program.

declare
  x number :=12;
  y number:=3;
  z number:=56;
  w number;
 begin
   add3(x,y,z,w); --call to procedure
    dbms_output.put_line(w);
end;
/
