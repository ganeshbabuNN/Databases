create or REPLACE VIEW vw_customerdetails as
select customers.customerno,customers.customerName,customers.DateOfBirth,
customers.contactno,departments.dept_name
from customers,departments
where customers.dept_id=departments.dept_id;