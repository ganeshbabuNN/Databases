create or replace
PROCEDURE emp_insert(
  p_employee_id IN employees.employee_id%TYPE,
  p_first_name IN employees.first_name%TYPE,
  p_last_name IN employees.last_name%TYPE,
  p_email IN employees.email%TYPE,
  p_phone_number IN employees.phone_number%TYPE,
  p_hire_date IN employees.hire_date%TYPE,
  p_job_id IN employees.job_id%TYPE,
  p_salary IN employees.salary%TYPE,
  p_commission_pct IN employees.commission_pct%TYPE,
  p_manager_id IN employees.manager_id%TYPE,
  p_department_id IN employees.department_id%TYPE
  )
AS
  v_employees_rec employees%ROWTYPE;
BEGIN

  v_employees_rec.employee_id := p_employee_id;
  v_employees_rec.first_name := p_first_name;
  v_employees_rec.last_name := p_last_name;
  v_employees_rec.email := p_email;
  v_employees_rec.phone_number := p_phone_number;
  v_employees_rec.hire_date := p_hire_date;
  v_employees_rec.job_id := p_job_id;
  v_employees_rec.salary := p_salary;
  v_employees_rec.commission_pct := p_commission_pct;
  v_employees_rec.manager_id := p_manager_id;
  v_employees_rec.department_id := p_department_id;
  
  INSERT INTO employees VALUES v_employees_rec;
END;
/

