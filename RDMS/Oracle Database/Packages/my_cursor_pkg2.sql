create or replace
PACKAGE my_cursor
AS

  CURSOR c1 RETURN employees%ROWTYPE;
  
END;
/

CREATE OR REPLACE
PACKAGE BODY MY_CURSOR AS

  CURSOR c1 RETURN employees%ROWTYPE IS 
    SELECT * FROM employees;
    
END MY_CURSOR;

I use it the same way I did the global cursor.

DECLARE
  v_anon_c1 my_cursor.c1%ROWTYPE;
BEGIN
  OPEN my_cursor.c1;
  
  FETCH my_cursor.c1
    INTO v_anon_c1;

  CLOSE my_cursor.c1;
END;
/
