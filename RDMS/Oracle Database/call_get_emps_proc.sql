
BEGIN
  get_emps_dbms_sql_proc;
END;
/

BEGIN
  get_emps_dbms_sql_proc(p_emp_id => 101);
END;
/

BEGIN
  get_emps_dbms_sql_proc(p_order_by => 'last_name');
END;
/
