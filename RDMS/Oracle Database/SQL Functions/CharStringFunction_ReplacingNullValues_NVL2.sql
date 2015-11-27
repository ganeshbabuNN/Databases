select first_name || ' ' || last_name as "Employee Name",
       nvl2(department_id,'Avaiable','NOT Avaiable') as "Department No"
from employees;
