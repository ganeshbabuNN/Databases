--considering the employee has a table

---Spec
CREATE or REPLACE PACKAGE employee_api
as
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

--body
CREATE OR REPLACE PACKAGE BODY EMPLOYEE_API 
AS
  PROCEDURE emp_insert(
    p_employees_rec IN EMPLOYEES%ROWTYPE ) AS
  BEGIN
    INSERT INTO employees VALUES p_employees_rec;
  END emp_insert;

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
  ) AS
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
  END emp_insert;

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
  END emp_update;
  
  PROCEDURE emp_delete(
    p_employee_id IN employees.employee_id%TYPE ) AS
  BEGIN
    DELETE FROM employees 
      WHERE employee_id = p_employee_id;
  END emp_delete;
END EMPLOYEE_API;
/

--calling the package API
DECLARE
  v_employees_rec employees%ROWTYPE;
  
BEGIN
  
  -- Initialize record
  v_employees_rec.employee_id := 998;
  v_employees_rec.first_name := 'Ganesh';
  v_employees_rec.last_name := 'babu';
  v_employees_rec.email := 'Ganeshc@yahoo.com';
  v_employees_rec.phone_number := '937372833';
  v_employees_rec.hire_date := sysdate;
  v_employees_rec.job_id := 'IT_PROG';
  v_employees_rec.salary := 50000;
  v_employees_rec.commission_pct := 0;
  v_employees_rec.manager_id := 100;
  v_employees_rec.department_id := 60;
  
  -- Called record based API
  emp_insert( v_employees_rec );
  
  -- Call parameterized api
  emp_insert(
   p_employee_id => 9991,
   p_first_name => 'ganesh',
   p_last_name => 'babu',
   p_email => 'ganeshc@yahoo.com',
   p_phone_number => '937372833',
   p_hire_date => sysdate,
   p_job_id => 'IT_PROG',
   p_salary => 50000,
   p_commission_pct => 0,
   p_manager_id => 100,
   p_department_id => 60 );
  
  -- call update api
  emp_update(
   p_employee_id => 99911,
   p_email => 'ganesh@testit.com' );
  
  -- call delete api
  emp_delete(
   p_employee_id => 999111 );
  
END;
/