--insert
create or replace
PROCEDURE emp_insert(
  p_employees_rec IN EMPLOYEES%ROWTYPE )
AS
BEGIN
  INSERT INTO employees VALUES p_employees_rec;
END;
/

--calling the Procedures

DECLARE
  v_employees_rec employees%ROWTYPE;
BEGIN
  v_employees_rec.employee_id := 999;
  v_employees_rec.first_name := 'ganesh';
  v_employees_rec.last_name := 'babu';
  v_employees_rec.email := 'g@bb.com';
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
