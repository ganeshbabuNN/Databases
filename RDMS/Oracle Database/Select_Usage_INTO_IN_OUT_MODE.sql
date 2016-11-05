-- emp_insert.sql
create or replace PROCEDURE emp_insert(
  p_employees_rec IN OUT EMPLOYEES%ROWTYPE )
AS
BEGIN
  IF p_employees_rec.employee_id IS NULL
  THEN
    SELECT employees_seq.nextval 
      INTO p_employees_rec.employee_id 
      FROM DUAL;
  END IF;
  INSERT INTO employees VALUES p_employees_rec;
END;
/

--call the api
DECLARE
  v_employees_rec employees%ROWTYPE;
BEGIN
  v_employees_rec.first_name := 'ganesh';
  v_employees_rec.last_name := 'babu';
  v_employees_rec.email := 'ganeshbabu346@yahoo.com';
  v_employees_rec.phone_number := '3432432';
  v_employees_rec.hire_date := SYSDATE;
  v_employees_rec.job_id := 'IT_PROG';
  v_employees_rec.salary := 50000;
  v_employees_rec.commission_pct := 0;
  v_employees_rec.manager_id := 100;
  v_employees_rec.department_id := 60;
  
  emp_insert( v_employees_rec );
  
END;
/
