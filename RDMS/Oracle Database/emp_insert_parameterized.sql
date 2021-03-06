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
BEGIN
  INSERT INTO employees 
    (employee_id, first_name, last_name, email,
    phone_number, hire_date, job_id, salary,
    commission_pct, manager_id, department_id)
    VALUES 
    (p_employee_id, p_first_name, p_last_name, p_email,
    p_phone_number, p_hire_date, p_job_id, p_salary,
    p_commission_pct, p_manager_id, p_department_id);
    
END;
/
