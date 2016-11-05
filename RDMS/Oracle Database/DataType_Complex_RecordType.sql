declare
  TYPE r_person is  record (
    first_name varchar2(10),
    last_name varchar2(10),
    age number);
    
    --create a local variable on assignment here
    v_person r_person;
begin
  v_person.first_name :='Ganesh';
  v_person.last_name := 'Babu';
  v_person.age :=23;
  
  dbms_output.put_line(v_person.first_name || v_person.last_name || v_person.age );
end;
/
