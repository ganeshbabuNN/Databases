declare
  type t_array is table of varchar2(30)
  index by varchar2(2);
  
  v_array t_array;
begin
  v_array('BA') := 'Bangalore';
  v_array('PU') :='Pune';
  
  dbms_output.put_line(v_array('BA'));
  dbms_output.put_line(v_array('PU'));
end;
/