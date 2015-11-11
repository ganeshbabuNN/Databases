create or replace PROCEDURE emp_insert(
  p_employees_rec IN EMPLOYEES%ROWTYPE )
AS
  v_local_record EMPLOYEES%ROWTYPE;
BEGIN
  v_local_record :=p_employees_rec;   --local variables
  
  IF v_local_record.employee_id IS NULL
  THEN
    SELECT employees_seq.nextval 
      INTO v_local_record.employee_id 
      FROM DUAL;
  END IF;
  INSERT INTO employees VALUES p_employees_rec;

END;
/

--Call the emp_insert
DECLARE
  v_employees_rec employees%ROWTYPE;
BEGIN
  v_employees_rec.first_name := 'ganesh';
  v_employees_rec.last_name := 'babu';
  v_employees_rec.email := 'g@sdss.com';
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