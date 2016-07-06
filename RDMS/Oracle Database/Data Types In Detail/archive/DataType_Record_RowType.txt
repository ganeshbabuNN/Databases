declare
  V_person employees%ROWTYPE;
   
begin
  v_person.first_name :='ganesh';
  v_person.last_name :='babu';
  v_person.salary :=23333;
  
  dbms_output.put_line(v_person.first_name || v_person.last_name || v_person.salary);
end;
/