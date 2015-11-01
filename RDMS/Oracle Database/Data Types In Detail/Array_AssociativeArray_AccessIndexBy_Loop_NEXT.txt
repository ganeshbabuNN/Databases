---Index in different index number.
declare
  type t_array is table of varchar2(30)
  index by binary_integer;
  
  v_array t_array;
begin
  v_array(10) := 'Hello world';
  v_array(20) :='Hello again';
  
  --looping using the index by array
 FOR i in v_array.first..v_array.last
  loop
    dbms_output.put_line(v_array(i));
  END loop;
end;
/

--- using the counter index of non-sequential index.
DECLARE
  TYPE t_array IS TABLE OF VARCHAR2(30)
    INDEX BY BINARY_INTEGER;
	
  v_array t_array;	
  
  v_index BINARY_INTEGER;   -- For string using varchar2
BEGIN
  v_array(10) := 'Hello World!';
  v_array(20) := 'Hello Again!';
  
  v_index := v_array.FIRST;  --get the first index.
  
  LOOP
    EXIT WHEN v_index IS NULL; -- terminate if the index is null
    
    dbms_output.put_line( v_array( v_index ) );
    
    v_index := v_array.NEXT(v_index); --- go to the next index instead of sequential index.
  END LOOP;
END;
/

