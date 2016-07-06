declare
 type t_array is varray(10) of varchar2(30);
 
 v_array t_array;

begin
  v_array :=t_array();
  
  v_array.extend;
  v_array(1) :='Hello world';
  
  v_array.extend;
  v_array(2) := 'Hello again';
  
  dbms_output.put_line(v_array(1) || v_array(2));
  
end;
/