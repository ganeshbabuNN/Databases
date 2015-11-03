DECLARE
  TYPE t_emp_record IS TABLE OF employees%ROWTYPE;
  
  v_employees t_emp_record;
  
  v_index BINARY_INTEGER;
BEGIN

  SELECT *
    BULK COLLECT INTO v_employees
    FROM employees;
    
  v_index := v_employees.FIRST;
  
  WHILE v_index IS NOT NULL
  LOOP
    IF v_employees(v_index).JOB_ID LIKE 'SA%'
    THEN
      UPDATE employees
        SET salary = salary * 1.05
        WHERE employee_id = v_employees(v_index).employee_id;
    END IF;
    
    v_index := v_employees.NEXT(v_index);
  END LOOP;
  
END;
/

--Best Usage instead of that loop
declare
	update employees
	set salary = salary *1.06
	where job_id like 'SA';	
end;

--* always starts with SQL that whats the Oracle suggests, instead of going directly to PLSQL :-)
