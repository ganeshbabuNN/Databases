with companysalary as( select cname, sum(salary) totalsal
from emp_company group by cname),
companyavgsalary as(select avg(totalsal) avgsal from companysalary)
select cname,totalsal from companysalary
where totalsal >(select avgsal from companyavgsalary)
/
