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
BEGIN

  IF p_employee_id IS NULL
  OR p_last_name IS NULL
  OR p_email IS NULL
  OR p_hire_date IS NULL
  OR p_job_id IS NULL
  THEN
    RAISE value_error;
  END IF;
  
  UPDATE employees 
    SET 
      first_name = CASE WHEN p_first_name = '*' THEN first_name ELSE p_first_name END,
      last_name = CASE WHEN p_last_name = '*' THEN last_name ELSE p_last_name END,
      email = CASE WHEN p_email = '*' THEN email ELSE p_email END,
      phone_number = CASE WHEN p_phone_number = '*' THEN phone_number ELSE p_phone_number END,
      hire_date = CASE WHEN p_hire_date = to_date('01-JAN-9999', 'DD-MON-YYYY')
	                    THEN hire_date ELSE p_hire_date END,
      job_id = CASE WHEN p_job_id = '*' THEN job_id ELSE p_job_id END,
      salary = CASE WHEN p_salary = -1 THEN salary ELSE p_salary END,
      commission_pct = CASE WHEN p_commission_pct = -0.01 THEN commission_pct ELSE p_commission_pct END,
      manager_id = CASE WHEN p_manager_id = -1 THEN manager_id ELSE p_manager_id END,
      department_id = CASE WHEN p_department_id = -1 THEN department_id ELSE p_department_id END
    WHERE employee_id = p_employee_id;
END;

--Name notations is based for making update

BEGIN

  emp_update(
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
