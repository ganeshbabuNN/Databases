declare
 x course;
 y course;
 z courselist;
begin
 x:=tcourse(12,'oracle');
 y:=tcourse(14,'java');
 dbms_output.put_line(' values '||to_char(x.coursecode)||' '||x.coursename);
 z:=courselist();
 z.extend;
 z(1):=x;
 z.extend;
 z(2):=y;
 for i in 1..z.count loop
  dbms_output.put_line(' in varray '||to_char(z(i).coursecode));
 end loop;
end;
/
