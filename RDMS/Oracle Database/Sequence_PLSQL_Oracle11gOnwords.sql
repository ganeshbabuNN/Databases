SET SERVEROUTPUT ON
declare
  nxt natural;
  cur natural;
begin
  nxt :=sq_studentno.NEXTVAL;
  cur :=sq_studentno.CURRVAL;
  dbms_output.put_line(nxt);
  dbms_output.put_line(cur);
end;

---or
SET SERVEROUTPUT ON
begin
  dbms_output.put_line(sq_studentno.nextval);
  dbms_output.put_line(sq_studentno.currval);
end;