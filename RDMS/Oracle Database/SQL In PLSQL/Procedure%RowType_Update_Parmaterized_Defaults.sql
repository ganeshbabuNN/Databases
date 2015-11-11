--Understanding the default values of those type.
-- * for string, -1 for numeric

create or replace PROCEDURE emp_update(
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
/*
  UPDATE employees 
  SET ROW = p_employees_rec
  WHERE p_employee_id = p_employees_rec.employee_id;
  */
 null;
END;
/

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

--name notations can applied in any order or specific. where default can be used.
BEGIN
  emp_update(
   p_employee_id => 999,
   p_email => 'gaa@baba.com' );
  
END;
/

--It is difficult to use without the name notations.
begin 
    emp_update( 999,'*', '*','gaa@baba.com');
end;
/

--full length for default value which is default value, or else name notations is a good thing.

begin 
    emp_update( 999,'*', '*', '*',, '*',to_date('01-jan-9999','DD-MON-YYYY') ,'*', -1,-0.01,-1,5);
end;
/
