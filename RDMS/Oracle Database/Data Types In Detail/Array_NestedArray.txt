declare
 type t_array is table of varchar2(30);
 
 v_array t_array;
begin
  v_array :=t_array();
  
  v_array.extend;
  v_array(1) :='Hello world';
  
  v_array.extend;
  v_array(2) := 'Hello again';
  
 for i in v_array.first..v_array.last
  loop 
    dbms_output.put_line(v_array(i));
  end loop;
end;
/