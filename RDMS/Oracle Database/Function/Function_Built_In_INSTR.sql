--simple instr
begin
  dbms_output.put_line(instr('this is ganesh','gan'));
end;
/
--you can also get the get the positions where that occurence , and return the next ocuurence positions.
begin
  dbms_output.put_line(instr('this is ganesh','h',1,2));
end;
/

--you can also get the backward reference
begin
  dbms_output.put_line(instr('this is ganesh','h',-1,2));
end;
/

