
---create a view
CREATE OR REPLACE VIEW hr_emps_by_dept
AS
  SELECT first_name, 
         last_name, 
         department_id, 
         count(*) over (partition by department_id) dept_cnt
    FROM employees;
    
select * from hr_emps_by_dept where last_name='Grant';

---After applying the Trigger@View
---update

UPDATE hr_emps_by_dept
  SET department_id = 10
  WHERE last_name='Grant';
