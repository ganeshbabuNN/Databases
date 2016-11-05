create view emp_sal_read_only as
select * from emp_company
with read only constraint emp_company_read_only;
/
