CREATE MATERIALIZED VIEW mv_rowid_employees
REFRESH with ROWID
as select * from employees;