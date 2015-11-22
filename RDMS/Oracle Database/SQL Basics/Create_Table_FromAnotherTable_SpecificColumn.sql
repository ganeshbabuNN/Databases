create table employeesdetails(accountno,name,phoneno)
as select employee_id,first_name||last_name,phone_number from employees
where employee_id=111111;