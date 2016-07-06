-- Call record version
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

-- call parameterized api
BEGIN

  emp_insert(
   p_employee_id => 999,
   p_first_name => 'ganesh',
   p_last_name => 'babu',
   p_email => 'gb@gbcom',
   p_phone_number => '232',
   p_hire_date => sysdate,
   p_job_id => 'IT_PROG',
   p_salary => 50000,
   p_commission_pct => 0,
   p_manager_id => 100,
   p_department_id => 60 );
  
END;
/
