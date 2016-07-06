DECLARE
  TYPE t_array IS TABLE OF VARCHAR2(30)
    INDEX BY BINARY_INTEGER;
	
  v_array t_array;	
BEGIN
  v_array(1) := 'Hello World!';
  v_array(2) := 'Hello Again!';
END;
/
