CREATE OR REPLACE VIEW hr_emps_by_dept
AS
  SELECT first_name, 
         last_name, 
         department_id, 
         count(*) over (partition by department_id) dept_cnt
    FROM employees;
