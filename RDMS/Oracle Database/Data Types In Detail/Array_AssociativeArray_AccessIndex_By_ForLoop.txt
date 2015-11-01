declare
  type t_array is table of varchar2(30)
  index by binary_integer;
  
  v_array t_array;
begin
  v_array(1) := 'Hello world';
  v_array(2) :='Hello again';
  
  --looping using the index by array
 FOR i in v_array.first..v_array.last
  loop
    dbms_output.put_line(v_array(i));
  END loop;
end;
/