declare
 type t_array is varray(10) of varchar2(30);
 
 v_array t_array;
 
 v_index binary_integer;

begin
  v_array :=t_array();
  
  v_array.extend;
  v_array(1) :='Hello world';
  
  v_array.extend;
  v_array(2) := 'Hello again';
  
  v_index :=v_array.first;
  
  loop
    exit when v_index is null;
    dbms_output.put_line(v_array(v_index));
    
    v_index :=v_array.next(v_index);
  end loop;
end;
/