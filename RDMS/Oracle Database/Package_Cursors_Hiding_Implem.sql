--hiding the cursor implementations
--spec
create or replace PACKAGE my_cursor
AS
  CURSOR c1 RETURN employees%ROWTYPE;  
END;
/

--body
CREATE OR REPLACE PACKAGE BODY my_cursor AS
  CURSOR c1 RETURN employees%ROWTYPE IS 
    SELECT * FROM employees;
END MY_CURSOR;
/

--calling the cursosr
DECLARE
  v_anon_c1 my_cursor.c1%ROWTYPE;
BEGIN
  OPEN my_cursor.c1;  
  FETCH my_cursor.c1
    INTO v_anon_c1;
  CLOSE my_cursor.c1;
END;
/