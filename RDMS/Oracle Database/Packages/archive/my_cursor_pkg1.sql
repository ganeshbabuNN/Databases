CREATE OR REPLACE PACKAGE my_cursor
AS

  CURSOR c1 IS
    SELECT first_name, last_name, email, phone_number, hire_date
      FROM employees
      WHERE employee_id = 101;
      
  v_local_record C1%ROWTYPE;
  
END;
/

DECLARE
  v_anon_c1 my_cursor.c1%ROWTYPE;
BEGIN
  OPEN my_cursor.c1;
  
  FETCH my_cursor.c1
    INTO v_anon_c1;

  CLOSE my_cursor.c1;
END;
/

