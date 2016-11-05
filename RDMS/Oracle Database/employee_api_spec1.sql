CREATE OR REPLACE PACKAGE employee_api
AS

  PROCEDURE emp_insert(
    p_employees_rec IN EMPLOYEES%ROWTYPE );

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
  );
   
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
  );

  PROCEDURE emp_delete(
    p_employee_id IN employees.employee_id%TYPE );  
  
END;
/
