declare
   v_person employees%ROWTYPE;   
   v_relative v_person%TYPE;
begin
  v_person.first_name :='ganesh';
  v_person.last_name :='babu';
  v_person.salary:=2333; 
  
  v_relative :=v_person;
  dbms_output.put_line(v_person.first_name || v_person.last_name || v_person.salary);
  dbms_output.put_line(v_relative.first_name || v_relative.last_name );
  
end;
/