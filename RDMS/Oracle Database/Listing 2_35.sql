select distinct(employee_cmp2.ename)
from emp_company employee_cmp1,company company1,	          				emp_company employee_cmp2,company company2
Where employee_cmp1.cname = company1.cname
and employee_cmp1.ename = ’SUNIL’
and employee_cmp2.cname = company2.cname
and company2.city = company1.city
/
