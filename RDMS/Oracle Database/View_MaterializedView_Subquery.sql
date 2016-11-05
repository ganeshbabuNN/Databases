CREATE MATERIALIZED VIEW mv_sq_employees
as select * from employees e
WHERE EXISTS
(SELECT * FROM departments D where e.department_id= d.department_id);