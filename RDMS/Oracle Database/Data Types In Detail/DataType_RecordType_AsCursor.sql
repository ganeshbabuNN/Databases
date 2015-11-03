--if you want the row type on the specific fields, then use the cursor

declare
   cursor c1 is
   select first_name ,last_name,salary
   from employees;
   
   v_person c1%rowtype;
begin
  v_person.first_name :='ganesh';
  v_person.last_name :='babu';
  v_person.salary:=2333; 
  
  dbms_output.put_line(v_person.first_name || v_person.last_name || v_person.salary);
end;
/