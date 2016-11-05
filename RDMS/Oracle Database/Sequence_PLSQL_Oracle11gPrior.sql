SET SERVEROUTPUT ON
declare
  nxt natural;
  cur natural;
begin
  select SQ_STUDENTNO.nextval,SQ_STUDENTNO.currval into nxt,cur from dual;
  dbms_output.put_line(nxt);
  dbms_output.put_line(cur);
end;

/*
-the next and current sequence values are copied to memory variables prior being used using the SELECT INTO Command.
-on Oracle11g onwords, sequences can be directly assigned to memory variables
-Before 11g, the SELECT INTO command was must to copy the sequence values in the memory variables.
*/