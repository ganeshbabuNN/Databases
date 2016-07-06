create or replace
PROCEDURE get_emps_dbms_sql_proc(
  p_emp_id IN employees.employee_id%TYPE DEFAULT NULL,
  p_order_by IN VARCHAR2 DEFAULT NULL)
AS
  
  v_CURSOR_string VARCHAR2(2001) := '
    SELECT first_name, last_name, email, phone_number, hire_date
      FROM employees ';
      
  v_cursor_id NUMBER;
  v_local_record employees%ROWTYPE;
  v_rows_fetched NUMBER;
BEGIN

  IF p_emp_id IS NOT NULL
  THEN
    v_cursor_string := v_cursor_string ||
         ' WHERE employee_id = :p_employee_id ';
  END IF;
  
  IF p_order_by IS NOT NULL
  THEN
    v_cursor_string := v_cursor_string || 
       ' ORDER BY ' || p_order_by;
  END IF;
    

  v_cursor_id := DBMS_SQL.open_cursor;
  
  DBMS_SQL.parse(v_cursor_id, v_cursor_string, DBMS_SQL.native );
  
  DBMS_SQL.define_column( v_cursor_id, 1, v_local_record.first_name, 20);
  DBMS_SQL.define_column( v_cursor_id, 2, v_local_record.last_name, 25);
  DBMS_SQL.define_column( v_cursor_id, 3, v_local_record.email, 20);
  DBMS_SQL.define_column( v_cursor_id, 4, v_local_record.phone_number, 25);
  DBMS_SQL.define_column( v_cursor_id, 5, v_local_record.hire_date);
  
  IF p_emp_id IS NOT NULL
  THEN
    DBMS_SQL.bind_variable( v_cursor_id, 'p_employee_id', p_emp_id);
  END IF;
  
  v_rows_fetched := DBMS_SQL.execute(v_cursor_id);
	
  LOOP 
    IF DBMS_SQL.FETCH_ROWS(v_cursor_id)> 0 THEN 
      DBMS_SQL.COLUMN_VALUE( v_cursor_id, 1, v_local_record.first_name);
      DBMS_SQL.COLUMN_VALUE( v_cursor_id, 2, v_local_record.last_name);
      DBMS_SQL.COLUMN_VALUE( v_cursor_id, 3, v_local_record.email);
      DBMS_SQL.COLUMN_VALUE( v_cursor_id, 4, v_local_record.phone_number);
      DBMS_SQL.COLUMN_VALUE( v_cursor_id, 5, v_local_record.hire_date);
    ELSE 
      EXIT; 
    END IF; 
	
	  logit(v_local_record.email, 'D');
  END LOOP; 
	
  DBMS_SQL.close_cursor(v_cursor_id);
	
END;
/
