insert into employeesdetails
select employee_id,first_name||last_name,phone_number from employees; 