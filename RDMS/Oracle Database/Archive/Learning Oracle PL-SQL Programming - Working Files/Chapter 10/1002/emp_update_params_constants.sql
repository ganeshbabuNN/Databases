create or replace
PROCEDURE emp_update(
  p_employee_id IN employees.employee_id%TYPE DEFAULT -1,
  p_first_name IN employees.first_name%TYPE DEFAULT '*',
  p_last_name IN employees.last_name%TYPE DEFAULT '*',
  p_email IN employees.email%TYPE DEFAULT '*',
  p_phone_number IN employees.phone_number%TYPE DEFAULT '*',
  p_hire_date IN employees.hire_date%TYPE DEFAULT to_date('01-JAN-9999', 'DD-MON-YYYY'),
  p_job_id IN employees.job_id%TYPE DEFAULT '*',
  p_salary IN employees.salary%TYPE DEFAULT -1,
  p_commission_pct IN employees.commission_pct%TYPE DEFAULT -0.01,
  p_manager_id IN employees.manager_id%TYPE DEFAULT -1,
  p_department_id IN employees.department_id%TYPE DEFAULT -1
  )
AS

  v_char_default CONSTANT VARCHAR2(1) := '*';
  v_whole_number_default CONSTANT NUMBER := -1;
  v_fractional_number_default CONSTANT NUMBER := -0.01;
  v_date_default CONSTANT DATE := to_date('01-JAN-9999', 'DD-MON-YYYY');
BEGIN
  UPDATE employees 
     SET
      first_name = CASE WHEN p_first_name = v_char_default THEN first_name ELSE p_first_name END,
      last_name = CASE WHEN p_last_name = v_char_default THEN last_name ELSE p_last_name END,
      email = CASE WHEN p_email = v_char_default THEN email ELSE p_email END,
      phone_number = CASE WHEN p_phone_number = v_char_default THEN phone_number ELSE p_phone_number END,
      hire_date = CASE WHEN p_hire_date = v_date_default
	                    THEN hire_date ELSE p_hire_date END,
      job_id = CASE WHEN p_job_id = v_char_default THEN job_id ELSE p_job_id END,
      salary = CASE WHEN p_salary = -1 THEN salary ELSE p_salary END,
      commission_pct = CASE WHEN p_commission_pct = -0.01 THEN commission_pct ELSE p_commission_pct END,
      manager_id = CASE WHEN p_manager_id = -1 THEN manager_id ELSE p_manager_id END,
      department_id = CASE WHEN p_department_id = -1 THEN department_id ELSE p_department_id END
    WHERE employee_id = p_employee_id;
END;
/

