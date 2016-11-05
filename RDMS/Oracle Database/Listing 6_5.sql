create view V3 as
select emp_company.cname,
max(salary)Maximum, min(salary)Minimum,
avg (salary)Average from emp_company group by emp_company.cname;
